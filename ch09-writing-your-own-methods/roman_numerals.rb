def roman_numeral num 

  roman = { -1 => ["I", "V"],
            -2 => ["X", "L"], 
            -3 => ["C", "D"], 
            -4 => ["M"]}
 
  num_array = num.to_s.split('').map(&:to_i) #[1,0]
  final_array = []

  i = -1
  loop do
    break if num_array[i] == nil 
    if num_array[i] >= 5 
      if num_array[i] == 9
        final_array << "IX" 
      else
        final_array << roman[i][1] + roman[i][0] * (num_array[i] - 5)
      end
    else
      if num_array[i] == 4
        final_array << "IV" 
      else
        final_array << roman[i][0] * num_array[i].to_i
      end 
    end
    i -= 1
    break if i == -5
  end
  final_array.reverse.join
end
