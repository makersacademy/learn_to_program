def roman_to_integer roman
  # creates hash with numeric values for each numeral
  digit_vals = {'i' => 1, 'v' => 5, 'x' => 10, 'l' => 50, 'c' => 100, 'd' => 500, 'm' => 1000}

  # sets 2 new variables to point to 0
  total = 0
  prev = 0

  # passes each character in str roman (reversed), into the block - so last character evaluated first
  roman.reverse.each_char do |c_or_C|
    # call downcase method on object 'c_or_C' variable is pointing to on each iteration, and pass into variable 'c'
    c = c_or_C.downcase
    # accesses integer value of item in hash, by passing in the the key
    val = digit_vals[c]
    # if val is false
    if !val
      puts 'This is not a valid roman numeral!'
      # return statement needed here to stop the rest of the code from executing and output the error msg
      return
    end
    # if 'val' is less than 'prev' * -1 to 'val'
    if val < prev
      val *= -1
    else
      # if 'val' is not less than 'prev', set 'prev' to value of 'val'
      prev = val
    end
    # adds current 'val' value to 'total'
    total += val
    # continue w iteration for next character
  end
  # returns total
  total
end

puts roman_to_integer('12MCMXCIX')
puts roman_to_integer('MCMXCIX')
