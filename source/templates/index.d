module templates.index;

import templates.navbar;
import templates.home;
import std.array : appender;
import std.conv : to;

string Index(string code1, string code2, string code3) {
    auto result = appender!string;

    result.put(`
    <html>
        <head>
            <title>Dlango</title>
            <script src="https://cdn.tailwindcss.com"></script>
            <link rel="stylesheet" href="/static/prism.css">
            <link rel="preconnect" href="https://fonts.googleapis.com">
            <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
            <link href="https://fonts.googleapis.com/css2?family=Rajdhani:wght@300;400;500;600;700&family=Rubik:ital,wght@0,300..900;1,300..900&display=swap" rel="stylesheet">
        </head>
        <body>
            <!-- `);
    result.put(Navbar());
    result.put(` -->
            <div class="">
                `);
    result.put(Home(code1, code2, code3));
    result.put(`
            </div>
            <script src="/static/prism.js"></script>
            <script src="https://prismjs.com/plugins/autoloader/prism-autoloader.min.js"></script>

        </body>
    </html>
`);

    return result.data;
}
