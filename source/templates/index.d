module templates.index;

import models;
import templates.navbar;
import templates.songs;
import std.array : appender;
import std.conv : to;

string Index(Song[] songs) {
    auto result = appender!string;

    result.put(`
    <html>
        <head>
            <title>Dlango</title>
            <script src="https://cdn.tailwindcss.com"></script>
        </head>
        <body>
            `);
    result.put(Navbar());
    result.put(Songs(songs));
    result.put(`
        </body>
    </html>
`);

    return result.data;
}
