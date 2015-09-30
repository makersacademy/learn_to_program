def roman_to_integer roman
  digits = {'i' =>    1,
            'v' =>    5,
            'x' =>   10,
            'l' =>   50,
            'c' =>  100,
            'd' =>  500,
            'm' => 1000,}
  total = 0
  prev = 0
  index = roman.length - 1

  while index >= 0
    c = roman[index].chr.downcase
    index = index - 1
    value = digits[c]

    if !value
      puts "This is not a valid roman numeral!"
      return
    end

    if value < prev
      value = value * -1
    else
      prev = value
    end

    total = total + value
  end

  total
end

# puts(roman_to_integer('mcmxcix'))
# puts(roman_to_integer('CCCLXV'))