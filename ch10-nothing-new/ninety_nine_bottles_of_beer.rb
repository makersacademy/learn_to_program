def english_number number

numString = ''
onesPlace = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
tensPlace = ['ten', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']
teenagers = ['eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']

leftToWrite = number

writing = leftToWrite/1000
leftToWrite = leftToWrite - writing*1000

  if writing > 0
  thousands = english_number writing
  numString = numString + thousands + ' thousand'
  if leftToWrite > 0
  numString = numString + ' '
  end
end

writing = leftToWrite/100
leftToWrite = leftToWrite - writing*100

  if writing > 0
  hundreds = english_number writing
  numString = numString + hundreds + ' hundred'
  if leftToWrite > 0
  numString = numString + ' '
  end
end

writing = leftToWrite/10
leftToWrite = leftToWrite - writing*10

if writing > 0
  if ((writing == 1) and (leftToWrite > 0))
    numString = numString + teenagers[leftToWrite-1]
    leftToWrite = 0
  else
    numString = numString + tensPlace[writing-1]
  end

  if leftToWrite > 0
    numString = numString + '-'
  end
end

writing = leftToWrite
leftToWrite = 0

if writing > 0
  numString = numString + onesPlace[writing-1]
end

numString

end


num_at_start = 9999
num_now = num_at_start
while num_now > 2

  puts "#{english_number(num_now)} bottles of beer on the wall, #{english_number(num_now)} bottles of beer!"
	num_now = num_now - 1
	puts "Take one down, pass it around, #{english_number(num_now)} bottles of beer on the wall!"

end
puts "2 bottles of beer on the wall, 2 bottles of beer!"
puts "Take one down, pass it around, 1 bottle of beer on the wall!"
puts "1 bottle of beer on the wall, 1 bottle of beer!"
puts "Take one down, pass it around, no more bottles of beer on the wall!"
