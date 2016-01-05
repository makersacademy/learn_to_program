def roman_numeral original_number

#eg. 1990.
left_digit = original_number / 1000 #original_number (1990) /  10000 = 1; left_digit = 1
remaining_digits = original_number - (left_digit * 1000)  #original_number (1990) - (1 * 1000) = 990
m = "m" * left_digit

if remaining_digits >= 900 # if 990 >= 900
  #now we want to keep original remaining digits
left_digit = remaining_digits / 900 # left_digit = 990 / 900 so left_digit = 1
remaining_digits2 = remaining_digits - (left_digit * 900) #new variable = 990 - (1 * 900)
d = "cm"
else
remaining_digits / 500 >= 1
left_digit = remaining_digits / 500
remaining_digits2 = remaining_digits - (left_digit * 500)
d = "d" * left_digit
end

if remaining_digits2 >= 400 && remaining_digits2 >= 100
remaining_digits2 / 100 >= 1
left_digit = remaining_digits2 / 100
remaining_digits3 = remaining_digits2 - (left_digit * 100)
c = "cd"
elsif
remaining_digits2 / 100 >= 1
left_digit = remaining_digits2 / 100
remaining_digits3 = remaining_digits2 - (left_digit * 100)
c = "c" * left_digit
else
remaining_digits3 = remaining_digits2
end

if remaining_digits3 >= 90 && remaining_digits3 >= 50
remaining_digits3 / 90 >= 1
left_digit = remaining_digits3 / 90
remaining_digits4 = remaining_digits3 - (left_digit * 90)
l = "xc"
elsif
remaining_digits3 / 50 >= 1
left_digit = remaining_digits3 / 50
remaining_digits4 = remaining_digits3 - (left_digit * 50)
l = "l" * left_digit
else
remaining_digits4 = remaining_digits3
end

if remaining_digits4 >= 40 && remaining_digits4 >= 10
left_digit = remaining_digits4 / 10
remaining_digits5 = remaining_digits4 - (left_digit * 10)
x = "xl"
elsif
remaining_digits4 / 10 >= 1
left_digit = remaining_digits4 / 10
remaining_digits5 = remaining_digits4 - (left_digit * 10)
x = "x" * left_digit
else
remaining_digits5 = remaining_digits4
end

if remaining_digits5 >= 9 && remaining_digits5 >= 5
left_digit = remaining_digits5 / 9
remaining_digits6 = remaining_digits5 - (left_digit * 9)
v = "ix"
elsif
remaining_digits5 / 5 >= 1
left_digit = remaining_digits5 / 5
remaining_digits6 = remaining_digits5 - (left_digit * 5)
v = "v" * left_digit
else
remaining_digits6= remaining_digits5
end

if remaining_digits6 >= 4 && remaining_digits6 >= 1
left_digit = remaining_digits6 / 1
remaining_digits7 = remaining_digits6 - (left_digit * 1)
i = "iv"
elsif
remaining_digits6 / 1 >= 1
left_digit = remaining_digits6 / 1
remaining_digits7 = remaining_digits6 - (left_digit * 1)
i = "i" * left_digit
end

"#{m}#{d}#{c}#{l}#{x}#{v}#{i}".upcase


end

p roman_numeral 9