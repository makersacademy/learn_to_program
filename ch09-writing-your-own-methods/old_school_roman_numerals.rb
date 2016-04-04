def old_roman_numeral num
roman_array = ["I", "V", "X", "L", "C", "D", "M"]
  to_roman = ""
   to_roman << roman_array[6] * (num / 1000)
   to_roman << roman_array[5] * (num % 1000/ 500)
   to_roman << roman_array[4] * (num % 500/ 100)
   to_roman << roman_array[3] * (num % 100/ 50)
   to_roman << roman_array[2] * (num % 50 / 10)
   to_roman << roman_array[1] * (num % 10 / 5)
   to_roman << roman_array[0] * (num % 5 / 1)
   to_roman
end






#MY FIRST SOLUTION BEFORE I SAW THE PATTERN

# def old_roman_numeral num
#
# roman_array = ["I", "V", "X", "L", "C", "D", "M"]
# return_array = []
#
# #Hundreds/Thousands
# return_array << roman_array[6] if num > 999
# return_array << roman_array[5] if num > 499 && num < 999
# return_array << roman_array[4]*(num/100) if num < 500
# num = num -((num/100)*100)
#
# #Tens
# if num > 49
# return_array << roman_array[3]
# num = num -50
# return_array << roman_array[2]*(num/10)
# else
# return_array << roman_array[2]*(num/10)
# end
# num = num -((num/10)*10)
#
# #Ones
#     if num > 4
#             return_array << roman_array[1]*(num/5)
#             num = num-5
#             return_array << roman_array[0]*(num)
#     elsif num < 5
#             return_array << roman_array[0]*(num)
#     else
#     end
#
#
# return return_array.join()
#
# end
