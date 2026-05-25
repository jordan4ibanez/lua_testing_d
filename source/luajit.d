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

    }

}
