contract D {}
contract C {
    function foo(int a) pure internal {
		D{slt:5, value:3};
    }
}
// ----
// TypeError: (69-86): Unknown call option "slt". Valid options are "salt", "value" and "gas".
// TypeError: (69-86): Expected callable expression before call options.
