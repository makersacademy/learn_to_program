def roman_to_integer roman
  roman = roman.downcase

  values = { :m => 1000, :d => 500, :c => 100, :l => 50, :x => 10, :v => 5, :i => 1 }
  values.default = 0
  running_total = 0

  if roman =~ /[^cdilmvx]/
    return "This is not a valid roman numeral!"
    return
  end

  while roman.length > 0
    first_char = roman[0]
    count = 1
    while first_char == roman[count]
      count += 1
    end

    next_character_value = count == roman.length ? 0 : values[roman[count].to_sym]

    if values[first_char.to_sym] > next_character_value
      running_total += values[first_char.to_sym] * count
      roman.slice!(0...count)
    else
      running_total += values[roman[count].to_sym] - (values[first_char.to_sym] * count)
      roman.slice!(0..count)
    end
  end

  running_total

end

# roman_to_integer "xiipoo"
# roman_to_integer "ix"
# roman_to_integer "xxxiv"