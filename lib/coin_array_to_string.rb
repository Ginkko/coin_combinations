class Array
  define_method(:coin_array_to_string) do
    output_string = ""
    coin_array = self.reverse()
    coin_types = ["Quarter(s)", "Dime(s)", "Nickel(s)", "Pennie(s)"]
    coin_array.each_index() do |coin_type_index|
      output_string.concat(coin_array[coin_type_index].to_s() + " " + coin_types[coin_type_index] + ", ")
    end
    output_string.chomp(", ")
  end
end
