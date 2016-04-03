def roman_to_integer roman
  digit_vals = {'i' => 1,
                'v' => 5,
                'x' => 10,
                'l' => 50,
                'c' => 100,
                'd' => 500,
                'm' => 1000}
  number = 0 #final result
  prev = 0 #variable we will use to compare with the value
  index = roman.length - 1 # calculating the index of the last element
  while index >= 0 #iterating over the array
    letter = roman[index].downcase # roman[index] gives the letter
    index = index - 1 #countdown so we can check every element from last to first
    val = digit_vals[letter]

    if digit_vals.has_value?(val) == false
      puts 'This is not a valid roman numeral!'
      return # without this return the program won't work, why?
    end

    if val < prev # since smaller roman numbers before bigger minorate the total
      val = val * -1 #so the value minorate the total
    else
      prev = val
    end
    number += val
  end

  number
end


