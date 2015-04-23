require("capybara/rspec")
require("./app")

Capybara.app = Sinatra::Application

describe("The path to coin resuts page", {:type => :feature}) do
  it("Accepts a cash amount and returns a page displaying the total number of quarters, dimes, nickels, and pennies.") do
    visit("/")
    fill_in("cash_input", :with => "2.99")
    click_button("submit")
    expect(page).to(have_content("11 Quarter(s), 2 Dime(s), 0 Nickel(s), 4 Pennie(s)"))
  end
end
