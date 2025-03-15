vcl 4.1;
backend java {
    .host = "backend";
    .port = "8080";
    .host_header = "petparadise.sytes.net";
}
/*
Listado de actions posibles
https://varnish-cache.org/docs/6.0/users-guide/vcl-actions.html

Listado de objetos
https://varnish-cache.org/docs/6.0/users-guide/vcl-variables.html

https://varnish-cache.org/docs/6.0/users-guide/vcl-example-manipulating-responses.html

Operadores
https://varnish-cache.org/docs/6.0/users-guide/vcl-syntax.html#operators

*/

sub vcl_recv {
    if (req.method == "GET") {
        
        return (hash);
    }
    else if (req.method == "POST" || 
    req.method == "PUT" ||
    req.method == "DELETE") {
            // ban("req.url ~ ^/api/" + regsub(req.url, "^/api/(.*)/?.*", "\1"));
            return (pass); // bypass de la cache para métodos POST PUT y DELETE
    }
    else if (req.method == "PRI") {
        /* This will never happen in properly formed traffic (see:
       RFC7540) */
        return (synth(405));
    }
    
}

sub vcl_hash {
    // Extrae el string que venza luego de /api/ y antes del siguiente /
    // set http.x_resource = regsub(req.url, "^/api/([^/]+)/.*", "\1");
    hash_data(req.method + req.url);
    return (lookup);
}

sub vcl_backend_response {
    if (bereq.method == "POST" 
    || bereq.method == "PUT" ||
    bereq.method == "DELETE"){
        ban("req.url ~ ^/api/" + regsub(bereq.url, "^/api/(\w*)/?.*","\1"));
    }
    else if (bereq.method == "GET" && beresp.status == 200) {
        // Elimina encabezados que impiden el caching
        unset beresp.http.Set-Cookie;
        unset beresp.http.Cache-Control; // (Si es apropiado para tu caso)
        // Forzar un TTL si el response no lo define adecuadamente
        if (!beresp.ttl || beresp.ttl < 1s) {
            set beresp.ttl = 1h;
        }
    }
    return(deliver);
}

/*
sub vcl_deliver {
    set resp.http.cache_api_hash = regsub(req.url, "^/api/(.*)/.*", "\1");
    set resp.http.testregex = regsub(req.url, "^/api/(\w*)/?.*","\1");
    set resp.http.testsumastring = "hola " + resp.http.cache_api_hash;
    // set demo = req.method + req.url;   no acepta variables personalizadas
    set resp.http.hash = req.method + req.url;
}
*/