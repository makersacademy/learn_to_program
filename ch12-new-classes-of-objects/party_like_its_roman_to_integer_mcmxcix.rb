def roman_to_integer roman
#### my abandoned attempts:

#roman=roman.split(//)
#integer=[]

#if roman[0] == "M"
  #integer[0] = 1
    #if roman[1] == "C"
    #  integer[1] = 9
#         elsif roman[1]=="D" && roman[2]=="C" && roman[3] == "C" && roman[4]
  #      integer[1] = 8
##  end

### chris pine solution:

number = {'i' => 1,
              'v' => 5,
              'x' => 10,
              'l' => 50,
              'c' => 100,
              'd' => 500,
              'm' => 1000}
total = 0
previous = 0
index = roman.length - 1
while index >= 0
  numeral = roman[index].downcase
  index = index - 1
  digital = number[numeral]
  if !digital
    puts "Not a valid roman numeral"
    return
  end

  if digital < previous
    digital = digital * -1
  else
    previous = digital
  end
  total = total + digital
end
total
end

puts roman_to_integer 'xx'
