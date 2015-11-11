# Party like it’s roman_to_integer 'mcmxcix'! Come on, you knew it was coming, didn’t you? It’s the other half of your roman_numeral 1999 method. Make sure to reject strings that aren’t valid Roman numerals.

def roman_to_integer roman
  roman_values = {"M" => 1000, "D" => 500, "C" => 100, "L" => 50, "X" => 10, "V" => 5, "I" => 1}

  total = 0
  last = 0

  roman.length.times do
    value = roman_values[roman[-1].upcase]
    roman = roman[0..-2]

    if value >= last
      total += value
      last = value
    else
      total -= value
    end

  end

  total
end
