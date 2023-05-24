// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity 0.8.13;

import "../round/RoundImplementation.sol";
import "../payoutStrategy/IPayoutStrategy.sol";

contract MockRoundImplementation is RoundImplementation {

  // mocks the payout strategy contract ready for payout
  function mockSetReadyForPayout() external payable {
    IPayoutStrategy(payoutStrategy).setReadyForPayout();
  }
}