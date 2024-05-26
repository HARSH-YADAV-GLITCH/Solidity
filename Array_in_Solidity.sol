// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;
contract Array {
    uint[] public nums = [1,2,3,4,5];
    uint[3] public numsFixed= [3,2,1];

function example() external {
    nums.push(6);
    uint x = nums[1];
    nums[2]= 69;
    delete nums[1];
    nums.pop();
    uint len = nums.length;
    uint [] memory a = new uint[](5);
    a[1]=123;
}
function returnArray() external view returns (uint[] memory ){
    return nums;
}
}
