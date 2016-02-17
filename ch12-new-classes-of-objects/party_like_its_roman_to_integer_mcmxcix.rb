def roman_to_integer roman
  roman.upcase!
  return "Not a valid Roman numeral." if roman =~ /[^ivxlcdm]/i
  num = 0
  integers = {"M" => 1000,
              "D" => 500,
              "C" => 100,
              "L" => 50,
              "X" => 10,
              "V" => 5,
              "I" => 1}
  index = 0
  while index < roman.length - 1
    letter = roman[index]
    next_letter = roman[index + 1]
    if integers [letter] >= integers[next_letter]
      num += integers[letter]
    else
      num -= integers[letter]
    end
    index += 1
  end
  num += integers[roman[-1]]
  return num
end

p roman_to_integer "MCX"
