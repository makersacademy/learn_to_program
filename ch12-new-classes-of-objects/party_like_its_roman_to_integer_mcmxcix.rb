def roman_to_integer roman
  conversion = {'i' =>    1,
                'v' =>    5,
                'x' =>   10,
                'l' =>   50,
                'c' =>  100,
                'd' =>  500,
                'm' => 1000}
  total = 0
  value = 0
  n = roman.length-1

  while n >= 0
    numeral = roman.downcase[n]
    dummy = conversion[numeral]
    return 'This is not in Roman numerals' if dummy == nil

    if dummy >= value
      value = dummy
    else
      value = dummy*-1
    end

    n -= 1
    total += value
  end
  total
end

puts(roman_to_integer('mcmxcix'))
