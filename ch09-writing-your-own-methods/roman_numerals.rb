def roman_numeral num
  array = num.to_s.split("").map {|n| n.to_i}
  string = ''
  
  while array.length > 0
  array.each_with_index do |n, i|
    if array.length >= 4 && i == 0
      string += "M" * n 
      array.delete_at(i)
    elsif array.length == 3 && i == 0
      string += "CM" if n == 9
      string += "D" + "C" * (n % 5) if n < 9 && n > 4
      string += "CD" if n == 4
      string += "C" * n if n < 4
      array.delete_at(i)
    elsif array.length == 2 && i == 0
      string += "XC" if n == 9
      string += "L" + "X" * (n % 5) if n < 9 && n > 4
      string += "XL" if n == 4
      string += "X" * n if n < 4
      array.delete_at(i)
    elsif array.length == 1
      string += "IX" if n == 9
      string += "V" + "I" * (n % 5) if n < 9 && n > 4
      string += "IV" if n == 4
      string += "I" * n if n < 4
      array.delete_at(i)
    end
  end
  end
  string
end

puts roman_numeral(120)