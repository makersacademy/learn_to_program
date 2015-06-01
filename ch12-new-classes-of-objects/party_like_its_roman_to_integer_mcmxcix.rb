def roman_to_integer roman

  numerals_and_values = {'i' => 1,
                         'v' => 5,
                         'x' => 10,
                         'l' => 50,
                         'c' => 100,
                         'd' => 500,
                         'm' => 1000}

  total = 0
  prev  = 0

  roman.reverse!
  roman.downcase!

  roman.each_char do |char|
    value = numerals_and_values[char]
    if value >= prev
      prev = value
    else
      value *= -1
    end
    total += value
  end
  total
end
