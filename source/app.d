import bindbc.lua;
import std.stdio;

void main() {
	writeln("Edit source/app.d to start your project.");

	// This version attempts to load the lua shared library using well-known variations
	// of the library name for the host system.
	LuaSupport ret = loadLua();
	if (ret != luaSupport) {

		// Handle error. For most use cases, its reasonable to use the the error handling API in
		// bindbc-loader to retrieve error messages for logging and then abort. If necessary, it's
		// possible to determine the root cause via the return value:

		if (ret == luaSupport.noLibrary) {
			// Lua shared library failed to load
		} else if (luaSupport.badLibrary) {
			// One or more symbols failed to load. The likely cause is that the
			// shared library is a version different from the one the app was
			// configured to load
		}
	} else {
		writeln("success!");
	}

}
