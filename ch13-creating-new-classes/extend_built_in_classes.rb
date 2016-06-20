class Integer
  def factorial
    if self <= 1
      1
    else
      self * (self-1).factorial
    end
  end

  def to_roman
    digits = [[1000, 500, 100, 50, 10, 5, 1], [0, 0, 0, 0, 0, 0, 0], ['M','D','C','L','X','V','I']]
    answer = ' '
    h = 0
    num = self
    
    digits[0].each do |z|
        if num / z > 0
            digits[1][h] = (num / z) #Counting the number of 10s, 50s, 100s, etc in num
            num = num % z #Using the remainder as the next value of num
        end
        h += 1
    end
   
    for a in 0..digits[1].size - 1 do #Iterate through array to calculate roman numerals old school style
        answer << digits[2][a] * digits[1][a]
        answer = answer.gsub("DCCCC","CM").gsub("CCCC","CD").gsub("LXXXX","XC").gsub("XXXX","XL").gsub("VIIII","IX").gsub("IIII","IV") #Catching edge cases to update old school roman numeral
    end

    answer.strip
  end
end

#puts 19.to_roman