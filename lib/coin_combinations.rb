class Float
  define_method(:coin_combinations) do
    coins_to_return = []

    total_cent_value = self.*(100).to_i()
    coins_to_return.push(total_cent_value)
    

  end
end
