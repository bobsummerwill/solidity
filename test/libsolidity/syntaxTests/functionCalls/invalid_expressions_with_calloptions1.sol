contract D {}
contract C {
    function foo(int a) pure internal {
		a{val:5};
    }
}
// ----
// TypeError: (69-77): Unknown call option "val". Valid options are "salt", "value" and "gas".
// TypeError: (69-77): Expected callable expression before call options.
