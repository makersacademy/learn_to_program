# def roman_numeral num
roman_num = ""
num = 9999
multiplier = 0
# am I going to have to make the following loop recursive? i.e. turn it into
# a function that passes num into itself after each calc, so as to keep iterating
# through the altered number?
# so my first line might need to be something like {unless num = 0 do}
# looks like there was no need - it moves onto the next if statement with
# num changed. I could try a recursive version someday though...
if num == 0 || num > 9999
  puts "Hey, you need to enter a number"
  exit
end

if num / 1000 > 0
  #here is where we deal with the thousands. look it up in the number key, then shovel
  #the result into a string
  multiplier = num / 1000
  roman_num << "M" * multiplier
  num = num - (num / 1000) * 1000
end

if num / 500 > 0
  multiplier = num / 500
  roman_num << "D" * multiplier
  num = num - (num / 500) * 500
end

if num / 100 > 0
  multiplier = num / 100
  roman_num << "C" * multiplier
  num = num - (num / 100) * 100
end

if num / 50 > 0
  multiplier = num / 50
  roman_num << "L" * multiplier
  num = num - (num / 50) * 50
end

if num / 10 > 0
  multiplier = num / 10
  roman_num << "X" * multiplier
  num = num - (num / 10) * 10
end

if num < 10
  roman_num << "VIIII" if num == 9
  roman_num << "VIII" if num == 8
  roman_num << "VII" if num == 7
  roman_num << "VI" if num == 6
  roman_num << "V" if num == 5
  roman_num << "IIII" if num == 4
  roman_num << "III" if num == 3
  roman_num << "II" if num == 2
  roman_num << "I" if num == 1
  multiplier = num / 5
end


puts roman_num
#end
