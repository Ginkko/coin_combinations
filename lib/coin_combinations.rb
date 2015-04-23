class Float
  define_method(:coin_combinations) do
    coins_to_return = [0, 0, 0, 0]

    total_cent_value = self.*(100).to_i()

    while total_cent_value > 25
      coins_to_return[3] += 1
      total_cent_value -= 25
    end

    while total_cent_value > 10
      coins_to_return[2] += 1
      total_cent_value -= 10
    end

    while total_cent_value > 5
      coins_to_return[1] += 1
      total_cent_value -= 5
    end

    coins_to_return[0] = total_cent_value

    coins_to_return

  end
end
