require("sinatra")
require("sinatra/reloader")
require("./lib/coin_combinations")
require("./lib/coin_array_to_string")
also_reload("/lib/**/*.rb")

get('/') do
  erb(:index)
end

get('/coin_results') do
  @coin_results_string = params.fetch("cash_input").to_f().coin_combinations().coin_array_to_string()
  erb(:coin_results)
end
