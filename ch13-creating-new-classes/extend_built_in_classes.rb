class Integer

  def factorial
    self == 0 ? 1 : self * ((self - 1).factorial)
  end

  def to_roman
    roman = { -1 => ["I", "V"],
              -2 => ["X", "L"], 
              -3 => ["C", "D"], 
              -4 => ["M"]}
   
    num_array = self.to_s.split('').map(&:to_i)
    final_array = []

    i = -1
    loop do
      break if num_array[i] == nil 
      if num_array[i] >= 5 
        final_array << roman[i][1] + roman[i][0] * (num_array[i] - 5)
      else
        final_array << roman[i][0] * num_array[i].to_i
      end
      i -= 1
      break if i == -5
    end
    
    final_array.reverse.join
  end
  
end

