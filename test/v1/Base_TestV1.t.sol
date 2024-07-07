// SPDX-License-Identifier: GPL-3.0-only
pragma solidity 0.8.20;

import {Test , console2} from "forge-std/Test.sol";
import {HorseStore} from "../../src/horseStoreV1/HorseStore.sol";

abstract contract Base_TestV1 is Test {

    HorseStore horseStore;
  
    function setUp() public virtual {
        horseStore = new HorseStore();
    }

    function testReadValue() public {
        uint256 value = horseStore.readNumberOfHorses();
        assertEq(value, 0);
    }

    function testWriteValue(uint256 NumberOfHorses) public {
        horseStore.updateHorseNumber(NumberOfHorses);
        uint256 value = horseStore.readNumberOfHorses();
        assertEq(value, NumberOfHorses);
    }
}