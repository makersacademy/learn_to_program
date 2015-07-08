def old_roman_numeral number

  numerals = {ones: "I", fives: "V", tens: "X", fifties: "L", hundreds: "C", five_hundreds: "D", thousands: "M"}

  result = ''

  units = {
    thousands: (number / 1000),
    five_hundreds: (number % 1000 / 500),
    hundreds: (number % 500 / 100),
    fifties: (number % 100 / 50),
    tens: (number % 50 / 10),
    fives: (number % 10 / 5),
    ones: (number % 5 / 1)
  }
   
  units.each do |key, value|
    result << numerals[key] * value
  end
  result

end
