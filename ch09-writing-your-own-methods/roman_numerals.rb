def roman_numeral num

roman_array = ["I", "V", "X", "L", "C", "D", "M"]
to_roman = ""

to_roman << roman_array[6] * (num / 1000)

#if modulus 1000 => 400 <= 499, OR 900 to 999 number is 9 OR 4
if (num % 1000) >= 400 && (num % 1000) <= 499
    to_roman << roman_array[4] + roman_array[5]
elsif (num % 1000) >= 900 && (num % 1000) <= 999
    to_roman << roman_array[4] + roman_array[6]
else
    to_roman << roman_array[5] * (num % 1000/ 500)
end


#if modulus 500 => 400 <= 499, number is 9 OR 4
if (num % 500) >= 400 && (num % 500) <= 499
  to_roman << roman_array[3] + roman_array[4] if num.to_s[0] == 4
  to_roman << roman_array[3] + roman_array[5] if num.to_s[0] == 9
else
   to_roman << roman_array[4] * (num % 500/ 100)
end


#if modulus 100 = 90-99 OR 40-49 its 9 OR 4
if (num % 100) >= 40 && (num % 100) <= 49
    to_roman << roman_array[2] + roman_array[3]
elsif (num % 100) >= 90 && (num % 100) <= 99
    to_roman << roman_array[2] + roman_array[4]
else
    to_roman << roman_array[3] * (num % 100/ 50)
end


 #if modulus 50 = 40-49 it is 4 or 9
if (num % 50) >= 40 && (num % 50) <= 49
  to_roman << roman_array[1] + roman_array[2] if num.to_s[1] == 4
  to_roman << roman_array[1] + roman_array[3] if num.to_s[1] == 9
else
 to_roman << roman_array[2] * (num % 50 / 10)
end



  #if modulus 10 = 4 OR 9 it is 4 or 9
if (num % 10) == 4
 to_roman << roman_array[0] + roman_array[1]
elsif (num % 10) == 9
 to_roman << roman_array[0] + roman_array[2]
else
 to_roman << roman_array[1] * (num % 10 / 5)
 to_roman << roman_array[0] * (num % 5 / 1)
end


to_roman

end



























  # to_roman = ""
  #  to_roman << "M" * (num / 1000)  #983 / 1000 = 0
  #
  #  #if modulus 1000 => 400 <= 499, OR 900 to 999 number is 9 OR 4
  #  to_roman << "D" * (num % 1000/ 500) #983 % 1000 / 500 = 983/500 = 1.966 = 1
  #
  # #if modulus 500 => 400 <= 499, number is 9 OR 4
  #  to_roman << "C" * (num % 500/ 100) #983 %500 = 483 / 100 = 4.83 = 4
  #
  # #if modulus 100 = 90-99 OR 40-49 its 9 OR 4
  #  to_roman << "L" * (num % 100/ 50) #983%100 = 83 / 50 = 1.66 = 1
  #
  #  #if modulus 50 = 40-49 it is 4 or 9
  #  to_roman << "X" * (num % 50 / 10) #983%50 = 33 /10 = 3.3 = 3
  #
  #   #if modulus 10 = 4 OR 9 it is 4 or 9
  #  to_roman << "V" * (num % 10 / 5) #983%10 = 3 / 5 = 0.6 = 0
  #    #if modulus 5 = 4 it is 4 or 9
  #  to_roman << "I" * (num % 5 / 1) #983%5 = 3




# “Modern” Roman numerals. Eventually, someone thought it would be ter-
# ribly clever if putting a smaller number before a larger one meant you
#
# had to subtract the smaller one. As a result of this development, you must
#
# now suffer. Rewrite your previous method to return the new-style Roman
#
# numerals so when someone calls roman_numeral 4, it should return 'IV'.
