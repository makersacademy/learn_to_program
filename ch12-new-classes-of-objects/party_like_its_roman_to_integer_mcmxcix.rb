

def roman_to_integer roman

  #create has so that roman numbers can be referenced to figures
  digit_vals = {'i' => 1,
                'v' => 5,
                'x' => 10,
                'l' => 50,
                'c' => 100,
                'd' => 500,
                'm' => 1000,}

  total = 0
  prev = 0
  index = roman.length - 1 #guides us to look at each roman no.

  while index >= 0 #for each roman no., do the following
    c = roman[index].downcase #look at the roman number, change downcase
    val = digit_vals[c] #look up the hash to find its value
    index = index - 1 #reduce index counter by one

    if !val
      puts 'This is not a valid roman number!'
      return
    end

    if val < prev
      val = val * -1 #if the number currently working with is less than the previous one added to 'total' then deduct this from 'total'
    else
      prev = val #number currently looking at is not smaller than the previous one added to total
    end

    total = total + val
  end

  total

end

puts roman_to_integer 'MCMLXIV'
puts roman_to_integer 'MMMCCXLI'
puts roman_to_integer 'LI'
