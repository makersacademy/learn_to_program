def roman_to_integer roman
    digit_vals = {'i' =>    1,
                  'v' =>    5,
                  'x' =>   10,
                  'l' =>   50,
                  'c' =>  100,
                  'd' =>  500,
                  'm' => 1000}

    total = 0
    prev = 0

    roman.reverse.each_char do |c_or_C| #Reverse input and iterate over each letter
      c = c_or_C.downcase #c = the reverse of the input
      val = digit_vals[c] #val = the corresponding numbers from letters provided

      if !val
        puts 'This is not a roman numeral!'
        return
      end

      if val < prev
        val *= -1
      else
        prev = val
      end
      total += val
    end

    total
end
