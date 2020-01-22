contract C {
    function foo() internal {
        (bool success, bytes memory data) = address(10).call{value: 7, gas: 3}("");
        success;
        data;
    }
}
// ----
