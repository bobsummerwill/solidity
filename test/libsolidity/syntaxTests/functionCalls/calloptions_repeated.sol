contract D {}
contract C {
    function foo(int a) payable external {
        this.foo{value:2, gas: 5}{gas:2};
        this.foo{value:2, gas: 5}{value:6};
        this.foo{gas:2, value: 5}{value:2, gas:5};
        new D{salt:"abc"}{salt:"a"}();
    }
}
// ----
// TypeError: (78-103): Function call options already specified.
// TypeError: (120-145): Function call options already specified.
// TypeError: (164-189): Function call options already specified.
// TypeError: (215-232): Function call options already specified.
