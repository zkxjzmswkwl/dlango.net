module controllers.songs;

import std.stdio;
import common;
import http;

HttpResponse songController(HttpRequest request) {
    return new HttpResponse(HttpStatus(200, "OK"), new Headers(), "HELLO BROTHERMAN!");
}