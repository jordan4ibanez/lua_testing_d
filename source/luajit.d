module luajit;

import bindbc.lua;
import mod;

static const struct LuaJIT {
    mixin modLock;
static:
private:

    lua_State* state = null;

public:

    void initialize() {
        terminate();

        state = luaL_newstate();
        luaL_openlibs(state);
    }

    void terminate() {
        if (state is null) {
            return;
        }

        lua_close(state);
        state = null;
    }

    // Easier to understand.
    void reset() = initialize;

}
