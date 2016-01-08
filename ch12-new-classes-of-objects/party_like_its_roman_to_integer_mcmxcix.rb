def roman_to_integer roman 
  digit_vals = {'i' => 1, 
                'v' => 5,
                'x' => 10,
                'l' => 50,
                'c' => 100,
                'd' => 500,
                'm' => 1000}
  prev = 0
  total = 0

  roman.reverse.each_char do | char |
    char.downcase!
    numeral = digit_vals[char]
    if !numeral
      puts "Please enter valid roman numerals!"
      return
    end

    if numeral < prev
      numeral *= -1
    else
      prev = numeral
    end

    total += numeral
  end
  total
end

