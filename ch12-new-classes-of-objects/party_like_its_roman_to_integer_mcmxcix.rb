
# had to look at and use chris pine solution as was taking me too long to come up with a working method


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
  index = roman.length - 1 #sets index to length of the roman numeral -1 to account for 0
  while index >= 0    # loops whil index is greater than 0
    c = roman[index].downcase   #sets c(for character in no) to the last character in the string
    index = index - 1 # reduces index by 1
    val = digit_vals[c] # sets val to the corresponding integer in the hash 
    if !val  # if val doesnt doesnt exist puts out string
      puts 'This is not a valid roman numeral!'
      return
    end

    if val < prev           # if the value is smaller than the previous value sets the value to its negative corresponding value
      val = val * -1        # so that it can be taken away from the total value rather than added to it (this accounts for special values such as "CM")
    else
      prev = val # else it sets prev equal to value
    end
    total = total + val  #adds the value to the running count
  end

  total #returns total value
end