contract D {}
contract C {
    function foo(int a) payable external {
        this.foo{value:2, gas: 5}{gas:2};
        (this.foo{value:2, gas: 5}){gas:2};
        this.foo{value:2, gas: 5}{value:6};
        this.foo.value(4){value:2, gas: 5};
        this.foo{gas:2, value: 5}{value:2, gas:5};
        new D{salt:"abc"}{salt:"a"}();
    }
}
// ====
// EVMVersion: >=constantinople
// ----
// TypeError: (78-110): Duplicate option "gas".
// TypeError: (120-154): Duplicate option "gas".
// TypeError: (164-198): Duplicate option "value".
// TypeError: (208-242): Duplicate option "value".
// TypeError: (252-293): Duplicate option "value".
// TypeError: (252-293): Duplicate option "gas".
// TypeError: (303-330): Duplicate option "salt".
