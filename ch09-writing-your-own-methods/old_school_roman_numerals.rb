def old_roman_numeral(num)
  array = num.to_s.split("").map {|n| n.to_i}
  string = ''
  
  while array.length > 0
  array.each_with_index do |n, i|
    if array.length >= 4 && i == 0
      string += "M" * n 
      array.delete_at(i)
    elsif array.length == 3 && i == 0
      string += "D" + "L" * (n % 5) if n >= 5
      string += "C" * n if n < 5
      array.delete_at(i)
    elsif array.length == 2 && i == 0
      string += "L" + "X" * (n % 5) if n >= 5
      string += "X" * n if n < 5
      array.delete_at(i)
    elsif array.length == 1
      string += "V" + "I" * (n % 5) if n >= 5
      string += "I" * n if n < 5
      array.delete_at(i)
    end
  end
  end
  string
end

