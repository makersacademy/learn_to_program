def roman_to_integer roman
  roman_vals = {"m" => 1000,
                "d" => 500,
                "c" => 100,
                "l" => 50,
                "x" => 10,
                "v" => 5,
                "i" => 1}

  i = roman.length - 1
  prev = 0
  total = 0

  while i >= 0
    key = roman[i].downcase
    i -= 1

    val = roman_vals[key]

    if !val
      puts "Not a valid roman numeral!"
    end

    if val < prev
      val *= -1
    else
      prev = val
    end

    total += val
  end

  total
end