def roman_to_integer roman

romans = {

  "M" => 1000,
  "m" => 1000,
  "D" => 500,
  "d" => 500,
  "C" => 100,
  "c" => 100,
  "L" => 50,
  "l" => 50,
  "X" => 10,
  "x" => 10,
  "V" => 5,
  "v" => 5,
  "I" => 1,
  "i" => 1
}

current_int = 0 #will hold numerical value of last 1 or 2 digits of roman string
result = 0 #will hold final result
counter = roman.length #used to iterate enough times to complete roman string

if counter == 1 #if array is only 1 digit long
  result = romans[roman[0]] #result = hash lookup value of that digit
  return result
end


while counter >= 2 #while string is at least 2 digits long

  if romans[roman[-2]] < romans[roman[-1]] #if penultimate digit < last digit
    current_int = romans[roman[-1]] - romans[roman[-2]] #= last digit - penultimate digit
    result += current_int #add that to result
    2.times do roman.chop! end #because we used 2 digits, chop off last two digits
    counter -= 2
  else #if penultimate digit !< last digit
    current_int = romans[roman[-1]] #set to hash lookup value of last digit
    result += current_int #add that to result
    roman.chop! #chop last digit from string
    counter -= 1
  end

if counter == 1 #when only 1 digit left in string
result += romans[roman[0]] #add hash lookup value of that digit to result
end

end

result
end
