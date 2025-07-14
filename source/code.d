module code;

const auto code1 = `dlango-admin createproject --name=SuperAIStartupWorthBillions`;
const auto code2 = q{struct User {
    /// bakes in orm functionality + id field.
    mixin Model!User;

    string username;
    string email;
    string password;
    long createdAt;
}
};
const auto code3 = q{// new user insertion
User("retrac", "retrac@gmail.com", "password").save();
// filter by email, case insensitive
auto filtered = User.objects.filter(
    Q("email__iexact", "RETRAC@gmail.com"),
    Q("username__contains", "trac")
);
// print results
foreach (user; filtered) {
    writeln(user.username, " ", user.email, " ", user.ID);
}
// Output: retrac retrac@gmail.com 1
};