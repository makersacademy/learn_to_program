def old_roman_numeral num

  numerals = ["M", "D", "C", "L", "X", "V", "I"]
  values = [1000, 500, 100, 50, 10, 5, 1]
  div=[]
  output = ""

  values.each do |v|
    div << (num/v).floor
    num = num % v
  end

  div.each_with_index do |v,i|
    output << "#{numerals[i]*v}" if v!=0
  end

  return output

end


print old_roman_numeral 2763
puts "next"
print old_roman_numeral 321
