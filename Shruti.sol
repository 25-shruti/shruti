// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract BlockTick {
    // State variable to store the counter
    int256 public counter;

    // Event to log changes to the counter
    event CounterUpdated(int256 newCounter);

    // Constructor to initialize the counter (optional, can be set to a default value)
    constructor(int256 initialCounter) {
        counter = initialCounter;
    }

    // Function to increment the counter by 1
    function increment() public {
        counter += 1;
        emit CounterUpdated(counter);
    }

    // Function to decrement the counter by 1
    function decrement() public {
        counter -= 1;
        emit CounterUpdated(counter);
    }

    // Function to get the current value of the counter
    function getCounter() public view returns (int256) {
        return counter;
    }
}
