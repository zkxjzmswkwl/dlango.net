module templates.home;

import templates.code;
import std.array : appender;
import std.conv : to;

string Home(string code1, string code2, string code3) {
    auto result = appender!string;

    result.put(`
    <section class="relative bg-black min-h-screen flex items-center justify-center py-16 px-4 overflow-hidden">
        <div class="absolute inset-0 opacity-20" style="background-image: linear-gradient(rgba(0,255,255,0.1) 1px, transparent 1px), linear-gradient(90deg, rgba(0,255,255,0.1) 1px, transparent 1px); background-size: 50px 50px;"></div>
        
        <div class="absolute inset-0">
            <div class="absolute top-1/4 left-1/4 w-2 h-2 bg-cyan-400 rounded-full opacity-60 animate-pulse"></div>
            <div class="absolute top-1/3 right-1/3 w-1 h-1 bg-red-400 rounded-full opacity-80 animate-ping"></div>
            <div class="absolute bottom-1/4 left-1/3 w-3 h-3 bg-cyan-300 rounded-full opacity-40 animate-bounce"></div>
            <div class="absolute top-2/3 right-1/4 w-2 h-2 bg-red-500 rounded-full opacity-70 animate-pulse"></div>
        </div>

        <div class="absolute inset-0 bg-gradient-radial from-cyan-900/20 via-transparent to-transparent"></div>
        
        <div class="relative z-10 max-w-4xl text-center">
            <div class="relative border border-cyan-400/30 bg-black/40 backdrop-blur-sm p-8 mb-8" style="box-shadow: 0 0 50px rgba(0,255,255,0.3), inset 0 0 50px rgba(0,255,255,0.1);">
                <div class="absolute top-0 left-0 w-8 h-8 border-t-2 border-l-2 border-cyan-400"></div>
                <div class="absolute top-0 right-0 w-8 h-8 border-t-2 border-r-2 border-cyan-400"></div>
                <div class="absolute bottom-0 left-0 w-8 h-8 border-b-2 border-l-2 border-cyan-400"></div>
                <div class="absolute bottom-0 right-0 w-8 h-8 border-b-2 border-r-2 border-cyan-400"></div>
                
                <h1 class="text-6xl md:text-8xl font-black text-transparent bg-clip-text bg-gradient-to-r from-cyan-400 via-white to-cyan-400 mb-4 tracking-wider drop-shadow-2xl" style="text-shadow: 0 0 30px rgba(0,255,255,0.8);">
                    DLANGO
                </h1>
                <div class="text-2xl md:text-3xl font-light text-cyan-300 mb-6 tracking-widest opacity-90" style="text-shadow: 0 0 20px rgba(0,255,255,0.6);">
                    &gt; DJANGO REIMAGINED FOR D
                </div>
                <div class="w-full h-px bg-gradient-to-r from-transparent via-cyan-400 to-transparent mb-6"></div>
                <p class="text-lg md:text-xl text-gray-300 mb-8 font-mono">
                    STATUS: <span class="text-red-400 animate-pulse">WORKS ON MY MACHINE</span><br>
                    VERSION: <span class="text-green-400">0.0.1</span>
                </p>
            </div>
            
            <!-- Holographic Buttons -->
            <div class="flex flex-col sm:flex-row gap-6 justify-center mb-12">
                <a href="https://github.com/zkxjzmswkwl/dlango" class="relative group px-8 py-4 bg-black/60 border border-cyan-400/50 text-cyan-400 font-mono uppercase tracking-widest backdrop-blur-sm transition-all duration-300 hover:bg-cyan-400/10 hover:border-cyan-400 hover:shadow-lg" style="box-shadow: 0 0 20px rgba(0,255,255,0.3);">
                    <span class="relative z-10">> GITHUB</span>
                    <div class="absolute inset-0 bg-gradient-to-r from-transparent via-cyan-400/20 to-transparent opacity-0 group-hover:opacity-100 transition-opacity duration-300"></div>
                </a>
                <a href="#quickstart" class="relative group px-8 py-4 bg-red-900/40 border border-red-400/50 text-red-400 font-mono uppercase tracking-widest backdrop-blur-sm transition-all duration-300 hover:bg-red-400/10 hover:border-red-400 hover:shadow-lg" style="box-shadow: 0 0 20px rgba(255,0,0,0.3);">
                    <span class="relative z-10">> START</span>
                    <div class="absolute inset-0 bg-gradient-to-r from-transparent via-red-400/20 to-transparent opacity-0 group-hover:opacity-100 transition-opacity duration-300"></div>
                </a>
            </div>
        </div>
    </section>

    <!-- AR Terminal Section -->
    <section id="quickstart" class="relative bg-black py-16 px-4">
        <div class="absolute inset-0 opacity-10" style="background-image: repeating-linear-gradient(0deg, transparent, transparent 2px, rgba(0,255,255,0.1) 2px, rgba(0,255,255,0.1) 4px);"></div>
        
        <div class="max-w-5xl mx-auto">
            <div class="text-center mb-12">
                <h2 class="text-4xl font-mono text-cyan-400 mb-4 tracking-widest" style="text-shadow: 0 0 20px rgba(0,255,255,0.8);">
                    &gt; IT'S ACTUALLY SIMPLE.
                </h2>
                <div class="w-32 h-px bg-gradient-to-r from-transparent via-cyan-400 to-transparent mx-auto"></div>
            </div>
            
            <!-- AR Code Panel -->
            <div class="relative bg-black/80 border border-cyan-400/30 backdrop-blur-sm mb-8 p-6" style="box-shadow: 0 0 30px rgba(0,255,255,0.2), inset 0 0 30px rgba(0,255,255,0.05);">
                <div class="flex items-center mb-4">
                    <div class="w-3 h-3 bg-red-500 rounded-full mr-2 animate-pulse"></div>
                    <div class="w-3 h-3 bg-yellow-500 rounded-full mr-2"></div>
                    <div class="w-3 h-3 bg-green-500 rounded-full mr-4"></div>
                    <span class="text-cyan-400 font-mono text-sm"></span>
                </div>
                <p class="text-green-400 font-mono mb-4">&gt; Creating a new project is one command</p>
                `);
    result.put(Code(code1));
    result.put(`
            </div>
            
            <!-- AR Code Grid -->
            <!-- <div class="grid md:grid-cols-2 gap-8"> -->
            <div class="flex flex-col gap-4">
                <div class="relative bg-black/60 border border-cyan-400/20 backdrop-blur-sm p-6 group hover:border-cyan-400/40 transition-all duration-300" style="box-shadow: 0 0 20px rgba(0,255,255,0.1);">
                    <div class="absolute top-2 right-2 w-2 h-2 bg-cyan-400 rounded-full animate-ping"></div>
                    <p class="text-cyan-400 font-mono mb-4">&gt; Code generated schema</p>
                    `);
    result.put(Code(code2));
    result.put(`
                </div>
                <div class="relative bg-black/60 border border-red-400/20 backdrop-blur-sm p-6 group hover:border-red-400/40 transition-all duration-300" style="box-shadow: 0 0 20px rgba(255,0,0,0.1);">
                    <div class="absolute top-2 right-2 w-2 h-2 bg-red-400 rounded-full animate-ping"></div>
                    <p class="text-red-400 font-mono mb-4">&gt; ORM that works and is familiar</p>
                    `);
    result.put(Code(code3));
    result.put(`
                </div>
            </div>
        </div>
    </section>

    <!-- AR Features Matrix -->
    <section class="relative bg-black py-16 px-4">
        <div class="absolute inset-0 opacity-5" style="background-image: radial-gradient(circle at 25% 25%, rgba(0,255,255,0.3) 0%, transparent 50%), radial-gradient(circle at 75% 75%, rgba(255,0,0,0.3) 0%, transparent 50%);"></div>
        
        <div class="max-w-6xl mx-auto">
            <div class="text-center mb-12">
                <h2 class="text-4xl font-mono text-white mb-4 tracking-widest" style="text-shadow: 0 0 20px rgba(255,255,255,0.8);">
                    &gt; FEATURES
                </h2>
                <div class="w-48 h-px bg-gradient-to-r from-transparent via-white to-transparent mx-auto"></div>
            </div>
            
            <div class="grid md:grid-cols-3 gap-8">
                <div class="relative bg-black/70 border border-cyan-400/30 backdrop-blur-sm p-6 text-center group hover:bg-cyan-400/5 transition-all duration-300" style="box-shadow: 0 0 25px rgba(0,255,255,0.2);">
                    <div class="absolute inset-0 bg-gradient-to-br from-cyan-400/10 to-transparent opacity-0 group-hover:opacity-100 transition-opacity duration-300"></div>
                    <div class="relative z-10">
                        <div class="w-16 h-16 mx-auto mb-4 border-2 border-cyan-400 flex items-center justify-center" style="clip-path: polygon(50% 0%, 100% 25%, 100% 75%, 50% 100%, 0% 75%, 0% 25%);">
                            <span class="text-cyan-400 text-2xl">01</span>
                        </div>
                        <h4 class="text-cyan-400 font-mono text-lg mb-3 tracking-wide">FAMILIAR PATTERNS</h4>
                        <p class="text-gray-400 font-mono text-sm">Django architecture enhanced with D-language performance optimization protocols</p>
                    </div>
                </div>
                
                <div class="relative bg-black/70 border border-red-400/30 backdrop-blur-sm p-6 text-center group hover:bg-red-400/5 transition-all duration-300" style="box-shadow: 0 0 25px rgba(255,0,0,0.2);">
                    <div class="absolute inset-0 bg-gradient-to-br from-red-400/10 to-transparent opacity-0 group-hover:opacity-100 transition-opacity duration-300"></div>
                    <div class="relative z-10">
                        <div class="w-16 h-16 mx-auto mb-4 border-2 border-red-400 flex items-center justify-center" style="clip-path: polygon(50% 0%, 100% 25%, 100% 75%, 50% 100%, 0% 75%, 0% 25%);">
                            <span class="text-red-400 text-2xl">02</span>
                        </div>
                        <h4 class="text-red-400 font-mono text-lg mb-3 tracking-wide">FAST</h4>
                        <p class="text-gray-400 font-mono text-sm">LOREM IPSUM I LOVE PANDA EXPRESS</p>
                    </div>
                </div>
                
                <div class="relative bg-black/70 border border-white/30 backdrop-blur-sm p-6 text-center group hover:bg-white/5 transition-all duration-300" style="box-shadow: 0 0 25px rgba(255,255,255,0.2);">
                    <div class="absolute inset-0 bg-gradient-to-br from-white/10 to-transparent opacity-0 group-hover:opacity-100 transition-opacity duration-300"></div>
                    <div class="relative z-10">
                        <div class="w-16 h-16 mx-auto mb-4 border-2 border-white flex items-center justify-center" style="clip-path: polygon(50% 0%, 100% 25%, 100% 75%, 50% 100%, 0% 75%, 0% 25%);">
                            <span class="text-white text-2xl">03</span>
                        </div>
                        <h4 class="text-white font-mono text-lg mb-3 tracking-wide">FULL STACK</h4>
                        <p class="text-gray-400 font-mono text-sm">Complete development ecosystem: ORM, migrations, templates, authentication modules</p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- AR Call to Action -->
    <section class="relative bg-black py-16 px-4">
        <div class="absolute inset-0 bg-gradient-to-t from-cyan-900/20 to-transparent"></div>
        
        <div class="max-w-4xl mx-auto text-center">
            <div class="relative bg-black/80 border border-cyan-400/40 backdrop-blur-sm p-8" style="box-shadow: 0 0 40px rgba(0,255,255,0.3), inset 0 0 40px rgba(0,255,255,0.1);">
                <h2 class="text-3xl font-mono text-white mb-6 tracking-widest" style="text-shadow: 0 0 20px rgba(255,255,255,0.8);">
                    &gt; GOGOGO
                </h2>
                <div class="w-full h-px bg-gradient-to-r from-transparent via-cyan-400 to-transparent mb-8"></div>
                <a href="#quickstart" class="relative group inline-block px-12 py-6 bg-gradient-to-r from-cyan-900/50 to-red-900/50 border border-cyan-400 text-white font-mono text-xl uppercase tracking-widest backdrop-blur-sm transition-all duration-300 hover:from-cyan-400/20 hover:to-red-400/20 hover:border-white hover:shadow-2xl" style="box-shadow: 0 0 30px rgba(0,255,255,0.4);">
                    <span class="relative z-10">> DLANGO TIME</span>
                    <div class="absolute inset-0 bg-gradient-to-r from-cyan-400/30 to-red-400/30 opacity-0 group-hover:opacity-100 transition-opacity duration-300"></div>
                </a>
            </div>
        </div>
    </section>
`);

    return result.data;
}
