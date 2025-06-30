module templates.songs;

import models;
import std.array : appender;
import std.conv : to;

string Songs(Song[] songs) {
    auto result = appender!string;

    result.put(`
    <div class="flex flex-col space-y-2">
`);
    foreach (song; songs) {
    result.put(`
            <div>`);
    result.put(to!string(song.title));
    result.put(` by `);
    result.put(to!string(song.artist));
    result.put(`</div>
        `);
    }
    result.put(`
    </div>
`);

    return result.data;
}
