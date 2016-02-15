def old_roman_numeral num
  letters = ""

  romans = {
          "M" => 1000,
          "D" => 500,
          "C" => 100,
          "L" => 50,
          "X" => 10,
          "V" => 5,
          "I"  => 1
  }

  romans.each do |key, value|
    until num < value
      num -= value
      letters << key
    end
  end
 return letters
end


# romans = [["M", 1000], #1000 = roman[0][1]
#           ["D", 500],  #500  = roman[1][1]
#           ["C", 100],  #100  = roman[2][1]
#           ["L", 50],   #50   = roman[3][1]
#           ["X", 10],   #10   = roman[4][1]
#           ["V", 5],    #5    = roman[5][1]
#           ["I", 1]]    #1    = roman[6][1]

# romans.each_with_index do | x, i | # loop through each i = index

#   position = num % romans[i][1] # remainder of num after 1000, 500, 100, 50, 10, 5, 1
#   quotient = num / romans[i][1]  # quotient of num divided by 1000, 500, 100, 50, 5, 1

#   if quotient >= 1 # which will require << of at least one letter in array
#     letters << romans[i][0] * quotient #e.g. if quotient = 783/500 = 1 , add "C" (500) * 1
#     num = position #783%500 = 283, and this gets fed back through the each iteration.
#   else # won't cat a letter from array, as there is nothing to cat (700/1000 = 0, no need of M)
#     num = num # if == 0, keeps number as is
#   end

#   num # offers new number to restart each loop
# end
#   return letters # concatenated result
# end

