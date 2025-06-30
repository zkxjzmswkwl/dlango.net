
import std.stdio;
import models;
import orm;
import http;
import common;
import std.file;
import controllers.songs;
import templates.index;

void main() {
    RequestHandler[string] routes;
    routes["/"] = (request) {
    auto code1 = `dlango-admin createproject --name=SuperAIStartupWorthBillions`;
    auto code2 = q{
struct User {
    /// bakes in orm functionality + id field.
    mixin Model!User;

    string username;
    string email;
    string password;
    long createdAt;
}
    };
auto code3 = q{
// new user insertion
User("retrac", "retrac@gmail.com", "password").save();
// filter by email, case insensitive
auto filtered = User.objects.filter([
    Q("email__iexact", "RETRAC@gmail.com")
]);
// print results
foreach (user; filtered) {
    writeln(user.username, " ", user.email, " ", user.ID);
}
// Output: retrac retrac@gmail.com 1
    };
    return new HttpResponse(HttpStatus(200, "OK"), new Headers(), Index(code1, code2, code3));
    };
    routes["/songs"] = (request) {
        return songController(request);
    };

    routes["/static/prism.css"] = (request) {
        return new HttpResponse(HttpStatus(200, "OK"), new Headers(), readText("public/prism.css"));
    };
    routes["/static/prism.js"] = (request) {
        return new HttpResponse(HttpStatus(200, "OK"), new Headers(), readText("public/prism.js"));
    };

    HttpServer server = new HttpServer(routes);
}
