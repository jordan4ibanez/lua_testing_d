import bindbc.lua;
import std.stdio;
import std.string;

void main() {
	lua_State* lua = luaL_newstate();

	luaL_openlibs(lua);

	luaL_dostring(lua, `
		print("hello world")
		if type(jit) == "table" then print("luajit!! " .. jit.version) end
	`.toStringz());

	lua_close(lua);
}
