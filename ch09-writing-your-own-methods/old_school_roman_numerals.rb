def old_roman_numeral num
  array = num.to_s.chars.map(&:to_i)
  a_length = array.length
    if a_length == 1
      puts array[0] < 5 ? "I" * array[0] : "V" + "I" * (array[0] - 5)
    elsif a_length == 2
    elsif a_length == 3
    elsif a_length == 4
    end
end

old_roman_numeral 9