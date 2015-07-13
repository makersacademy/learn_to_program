def old_roman_numeral num
  answer=""
  numerals = ["M", "D", "C", "L", "X", "V", "I"]
  numbers = [1000, 500, 100, 50, 10, 5, 1]
  i=0
  numbers.each do |number|
    factor = num/number
    if factor >=1
      answer+=numerals[i]*factor
      num-=numbers[i]*factor
    end
    i+=1
  end
  answer
end

#Test cases
=begin
old_roman_numeral 50
old_roman_numeral 800
old_roman_numeral 9
old_roman_numeral 2707
=end


