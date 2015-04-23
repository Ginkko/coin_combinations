require('rspec')
require('coin_combinations')
require('pry')

describe("Float#coin_combinations") do
  it("For input values < $0.05, coin_combinations returns the same value in pennies") do
    expect(0.05.coin_combinations()).to(eq([5]))
  end
end
