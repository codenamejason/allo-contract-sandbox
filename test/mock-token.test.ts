import { expect } from "chai";
import { ethers } from "hardhat";

describe("MockERC20", function () {
  it("Should return token name", async function () {
    const MockERC20 = await ethers.getContractFactory("MockERC20");
    const token = await MockERC20.deploy(1000000);
    await token.deployed();

    expect(await token.name()).to.equal("Allo Token Mock");
  });

  it("Should return token symbol", async function () {
    const MockERC20 = await ethers.getContractFactory("MockERC20");
    const token = await MockERC20.deploy(1000000);
    await token.deployed();

    expect(await token.symbol()).to.equal("ATM");
  });
});
