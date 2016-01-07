def roman_numeral num

  hundreds = ["", "C", "CC", "CCC", "CD", "D", "DC", "DCC", "DCCC", "CM"]
  tens = ["", "X", "XX", "XXX", "XL", "L", "LX", "LXX", "LXXX", "XC"]
  ones = ["", "I", "II", "III", "IV", "V", "VI", "VII", "VIII", "IX"]


  output_roman = ""

  output_roman << "M" * (num/1000)
  output_roman << hundreds[(num%1000/100)]
  output_roman << tens[(num%100/10)]
  output_roman << ones[(num%10)]

  output_roman

end

