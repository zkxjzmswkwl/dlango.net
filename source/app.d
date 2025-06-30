
import std.stdio;
import models;
import orm;
import http;
import common;
import controllers.songs;
import templates.index;

void main() {
    // Song("Halcyon", "Orbital").save();
    // Song("Fortunate Son", "Creedence Clearwater Revival").save();

    RequestHandler[string] routes;
    routes["/"] = (request) {
        auto songs = Song.objects.all().take(10);
        return new HttpResponse(HttpStatus(200, "OK"), new Headers(), Index(songs));
    };
    routes["/songs"] = (request) {
        return songController(request);
    };

    HttpServer server = new HttpServer(routes);
}
