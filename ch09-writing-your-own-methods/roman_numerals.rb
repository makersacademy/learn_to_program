def roman_numeral num
  answer=""
  numerals = ["M", "D", "C", "L", "X", "V", "I"]
  numbers = [1000, 500, 100, 50, 10, 5, 1]
  i=0
  numbers.each do |number|
    factor = num/number
    if factor>0
      if factor <=3
        #add that many to answer
        answer+=numerals[i]*factor
        num-=numbers[i]*factor
      else
        answer+=numerals[i]+numerals[i-1]
        num-=(numbers[i-1]-numbers[i])

      end
    end

    i+=1
  end
  answer
end

# Test case:
#roman_numeral 4
