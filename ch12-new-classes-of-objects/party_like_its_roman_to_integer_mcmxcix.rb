def roman_to_integer roman
  # 4's
  roman.upcase!
  roman.gsub!(/IV/, ' 4')
  roman.gsub!(/XL/, ' 40')
  roman.gsub!(/CD/, ' 400')

  roman.gsub!(/CM/, ' 900')
  roman.gsub!(/XC/, ' 90')
  roman.gsub!(/IX/, ' 9')

  roman.gsub!(/M/, ' 1000')
  roman.gsub!(/D/, ' 500')
  roman.gsub!(/C/, ' 100')
  roman.gsub!(/L/, ' 50')
  roman.gsub!(/X/, ' 10')
  roman.gsub!(/V/, ' 5')
  roman.gsub!(/I/, ' 1')

  p = (roman.split(' ').map{|x| x.to_i}).reduce(:+)
  puts "POTATO LIKE IT'S #{p}"
end


roman_to_integer 'MCMLXXXII'
roman_to_integer 'mcmxcix'