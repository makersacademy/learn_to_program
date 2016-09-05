def old_roman_numeral num
  array = num.to_s.chars.map(&:to_i)
  a_length = array.length
    if a_length == 1
      puts array[0] < 5 ? "I" * array[0] : "V" + "I" * (array[0] - 5)
    elsif a_length == 2
      if num < 50
        puts "X" * array[0] + (array[1] < 5 ? "I" * array[1] : "V" + "I" * (array[1] - 5))
      else
        puts "L" + ("X" * (array[0] - 5)) + (array[1] < 5 ? "I" * array[1] : "V" + "I" * (array[1] - 5))
      end
    elsif a_length == 3
      if num < 500
        puts "C" * array[0]
      else
      end
    elsif a_length == 4
    end
end