# def roman_to_integer roman
#     number_to_return = 0
#     numerals = roman.split("")
#
#     exception_pairs = {'CM' => 900,
#                       'CD' => 400,
#                       'XC' => 90,
#                       'XL' => 40,
#                       'IX' => 9,
#                       'IX' => 4,}
#
#     roman_numerals = {'M' => 1000
#                       'D' => 500
#                       'C' => 100
#                       'L' => 50
#                       'X' => 10
#                       'V' => 5
#                       'I' => 1}
#
# numeral_pairs = numerals.each_cons(2).select { |first, second| exception_pairs.has_key?([first, second].join)} -
# numerals.each.reject {|a, b| exception_pairs.has_key?([a, b].join)} -
#
# remaining_letters = numerals.each_cons(2).reject {|first, second| exception_pairs.has_key?([first, second].join)}
#
#
# numeral_pairs.each do |pair|
# number_to_return = number_to_return + exception_pairs(pair)
#   end
#
# remaining_letters.each do |letter|
# number_to_return = number_to_return + roman_numerals(letter)
#   end
#
# return number_to_return
#
# end

def roman_to_integer roman
  digit_vals = {'i' => 1,
                'v' => 5,
                'x' => 10,
                'l' => 50,
                'c' => 100,
                'd' => 500,
                'm' => 1000}
  total = 0
  prev = 0
  index = roman.length - 1 # the total index range will be 0 to length of the array -1, so we need to subtract the one
  while index >= 0
    c = roman[index].downcase # c is pointing to the letter in the roman string at our index number - initially the last letter in the string - and is downcased
    index = index - 1 # move the index along (so work out the while loop)
    val = digit_vals[c] # point val at the value of the key which matches our letter in the digit_vals hash
    if !val # if the letter doesn't match a key in the hash, val will be nil and will evaluate to false
      puts 'This is not a valid roman numeral!' # if any letter doesn't match, we know it's not a roman numeral
      return
    end

    if val < prev # this won't ever be true on the first pass (the smallest val could be at this point is 1) but afterwards, this will tell us if we need to subtract the value - as this value is smaller than the preceeding one (prev)
      val = val * -1 # we need to subtract it, so we make it a negative number
    else
      prev = val # we pass our value to the prev variable, so we can compare it on the next pass
    end
    total = total + val # we add val to the total (we could be adding a minus number)
  end

  total # one the loop is complete, total should be the sum of all the values of the letter in the string
end

# puts(roman_to_integer('mcmxcix'))
# puts(roman_to_integer('CCCLXV'))
