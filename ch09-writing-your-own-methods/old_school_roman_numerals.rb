def old_roman_numeral num
  array = num.to_s.chars.map(&:to_i)
  a_length = array.length
    if a_length == 1
      if array[0] < 5
        puts "I" * array[0]
      else 
        puts "V" + ("I" * (array[0] - 5))
      end
    elsif a_length == 2
    elsif a_length == 3
    elsif a_length == 4
    end
end

