contract D {}
contract C {
    function foo() pure internal {
		new D{salt:5, value:3};
		new D{salt:5};
		new D{value:5+5};
		new D{salt:2130+5};
    }
}
// ----
