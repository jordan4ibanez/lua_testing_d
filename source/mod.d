module mod;

mixin template modLock() {
    @disable this();
    @disable this(this);
    @disable void opAssign();
    @disable void opAssign(typeof(this));
}
