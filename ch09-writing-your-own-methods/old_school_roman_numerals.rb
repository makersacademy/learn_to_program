=begin
def old_roman_numeral num
  numbers = [1000, 500, 100, 50, 10, 5, 1]
  numerals = ["M", "D", "C", "L", "X", "V", "I"]
  roman_num = ""
  j=0

  while j <= 6
  	if num >= numbers[j]
  		num = num - numbers[j]
  		roman_num = roman_num + numerals[j]
  	end
  	j = j + 1
  end
   roman_num
end
puts "enter a number!"
puts old_roman_numeral(gets.chomp.to_i)
=end
def old_roman_numeral num
  raise 'Must use positive integer' if num <= 0

  roman = ''

  roman << 'M' * (num / 1000)
  roman << 'D' * (num % 1000 / 500)
  roman << 'C' * (num % 500 / 100)
  roman << 'L' * (num % 100 / 50)
  roman << 'X' * (num % 50 / 10)
  roman << 'V' * (num % 10 / 5)
  roman << 'I' * (num % 5 / 1)

  roman
end
