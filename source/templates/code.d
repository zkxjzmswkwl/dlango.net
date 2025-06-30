module templates.code;

import std.array : appender;
import std.conv : to;

string Code(string code) {
    auto result = appender!string;

    result.put(`
    <pre><code class="language-d">`);
    result.put(to!string(code));
    result.put(`</code></pre>
`);

    return result.data;
}
