contract D {}
contract C {
    function foo() pure internal {
		new D{salt:5, value:3, gas: 4};
		new D{slt:5, value:3};
		new D{val:5};
		new D{random:5+5};
		new D{what:2130+5};
		new D{gas: 2};
    }
}
// ----
// TypeError: (64-94): Cannot set option "value" on a non-payable function type.
// TypeError: (64-94): Function call option "gas" cannot be used with "new".
// TypeError: (98-119): Unknown call option "slt". Valid options are "salt", "value" and "gas".
// TypeError: (98-119): Cannot set option "value" on a non-payable function type.
// TypeError: (123-135): Unknown call option "val". Valid options are "salt", "value" and "gas".
// TypeError: (139-156): Unknown call option "random". Valid options are "salt", "value" and "gas".
// TypeError: (160-178): Unknown call option "what". Valid options are "salt", "value" and "gas".
// TypeError: (182-195): Function call option "gas" cannot be used with "new".
