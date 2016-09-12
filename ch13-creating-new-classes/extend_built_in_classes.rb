class Integer
  def roman_num

    thou = (self / 1000)
    hund = (self % 1000 / 100)
    tens = (self % 100 / 10)
    ones = (self % 10)

    x = "M" * thou

    if hund == 4
      x = x + "CD"
    elsif hund == 9
      x = x + "CM"
    else
      x = x + "D" * (self % 1000 / 500)
      x = x + "C" * (self % 500 / 100)
    end

    if tens == 4
      x = x + "XL"
    elsif tens == 9
      x = x + "XC"
    else
      x = x + "L" * (self % 100 / 50)
      x = x + "X" * (self % 50 / 10)
    end

    if ones == 4
      x = x + "IV"
    elsif ones == 9
      x = x + "IX"
    else
      x = x + "V" * (self % 10 / 5)
      x = x + "I" * (self % 5 / 1)
    end

    x # returns roman numeral
  end
end

puts 4.roman_num
puts 1999.roman_num
