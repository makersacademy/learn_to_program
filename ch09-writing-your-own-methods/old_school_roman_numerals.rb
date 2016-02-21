def old_roman_numeral num
    roman = ""
  m = num.to_i
      roman << "M" * (m / 1000)
      d = m % 1000
      roman << "D" * (d / 500)
      c = d % 500
      roman << "C" * (c / 100)
      l = c % 100
      roman << "L" * (l / 50)
      x = l % 50
      roman << "X" * (x / 10)
      v = x % 10
      roman << "V" * (v / 5)
      i = v % 5
      roman << "I" * i
      return roman
end