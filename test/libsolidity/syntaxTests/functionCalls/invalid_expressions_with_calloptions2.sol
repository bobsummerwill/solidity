contract D {}
contract C {
    function foo(int a) pure internal {
		a = (1+1){random:5+5};
    }
}
// ----
// TypeError: (73-90): Unknown call option "random". Valid options are "salt", "value" and "gas".
// TypeError: (73-90): Expected callable expression before call options.
