def roman_numeral num
  roman = ''
  roman = roman + 'M' * (num / 1000)
  num = num - (num / 1000) * 1000
  roman = roman + 'CM' * (num / 900)
  num = num - (num / 900) * 900
  roman = roman + 'D' * (num / 500)
  num = num - (num / 500) * 500
  roman = roman + 'CD' * (num / 400)
  num = num - (num / 400) * 400
  roman = roman + 'C' * (num / 100)
  num = num - (num / 100) * 100
  roman = roman + 'XC' * (num / 90)
  num = num - (num / 90) * 90
  roman = roman + 'L' * (num / 50)
  num = num - (num / 50) * 50
  roman = roman + 'XL' * (num / 40)
  num = num - (num / 40) * 40
  roman = roman + 'X' * (num / 10)
  num = num - (num / 10) * 10
  roman = roman + 'IX' * (num / 9)
  num = num - (num / 9) * 9
  roman = roman + 'V' * (num / 5)
  num = num - (num / 5) * 5
  roman = roman + 'IV' * (num / 4)
  num = num - (num / 4) * 4
  roman = roman + 'I' * (num / 1)
end

puts "Enter a number from 1 to 3000."
puts roman_numeral(gets.chomp.to_i)
