require('rspec')
require('coin_array_to_string')
require('pry')

describe("Array#coin_array_to_string") do
  it("Converts an array of coin values to a plain English string") do
    expect([4, 0, 2, 11].coin_array_to_string()).to(eq("11 Quarter(s), 2 Dime(s), 0 Nickel(s), 4 Pennie(s)"))
  end
end
