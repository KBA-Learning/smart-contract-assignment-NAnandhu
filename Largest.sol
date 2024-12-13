// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract Largest {
    uint16 num1;
    uint16 num2;
    uint16 num3;
    uint16 largest;
   

    function getNumber() public view returns (uint16, uint16, uint16) {
        return (num1, num2, num3);
    }

    function setNumber(uint16 _num1, uint16 _num2, uint16 _num3) public {
        num1 = _num1;
        num2 = _num2;
        num3 = _num3;
 
        if (num1 > num2 && num1 > num3) {
            largest = num1;
        } else if (num2 > num1 && num2 > num3) {
            largest = num2;
        } else {
            largest = num3;
        }
    }
    function findLargest() public view returns (uint16) {
        return largest;
    }

//check sign
    function checkSign(int Number) public pure returns (string memory) {
        if (Number > 0) {
            return "positive";
        } else if (Number < 0) {
            return "negative";
        } else {
            return "zero";
        }
    }
//Number To Word  
function getDigit(uint8 digit) public pure returns (string memory) {
        if (digit > 9) {
            return "Invalid Input";
        }
        string[10] memory ToString = ["zero","one","two","three","four","five","six","seven","eight","nine"];
        return ToString[digit];
    } 



}

