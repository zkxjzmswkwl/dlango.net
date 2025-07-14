import std.stdio;
import models;
import orm;
import http;
import common;
import std.file;
import controllers.songs;
import templates.index;
import code;


void main()
{
    RequestHandler[string] routes;
    routes["/"] = (request) {
        return new HttpResponse(HttpStatus(200, "OK"), new Headers(), Index(code1, code2, code3));
    };
    routes["/songs"] = (request) { return songController(request); };

    routes["/static/prism.css"] = (request) {
        return new HttpResponse(HttpStatus(200, "OK"), new Headers(), readText("public/prism.css"));
    };
    routes["/static/prism.js"] = (request) {
        return new HttpResponse(HttpStatus(200, "OK"), new Headers(), readText("public/prism.js"));
    };

    HttpServer server = new HttpServer(routes);
}
