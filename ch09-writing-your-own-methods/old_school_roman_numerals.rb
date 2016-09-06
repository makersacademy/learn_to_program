def old_roman_numeral num
  array = num.to_s.chars.map(&:to_i)
  a_length = array.length
    if a_length == 1
      return array[0] < 5 ? "I" * array[0] : "V" + "I" * (array[0] - 5)
    elsif a_length == 2
      if num < 50
        return "X" * array[0] + (array[1] < 5 ? "I" * array[1] : "V" + "I" * (array[1] - 5))
      else
        return "L" + ("X" * (array[0] - 5)) + (array[1] < 5 ? "I" * array[1] : "V" + "I" * (array[1] - 5))
      end
    elsif a_length == 3
      if num < 500
        return "C" * array[0] + (array[1] < 5 ? ("X" * array[1] + (array[2] < 5 ? "I" * array[2] : "V" + "I" * (array[2] - 5))) : ("L" + ("X" * (array[1] - 5)) + (array[2] < 5 ? "I" * array[2] : "V" + "I" * (array[2] - 5))))
      else
        return "D" + ("C" * (array[0] - 5)) + (array[1] < 5 ? ("X" * array[1] + (array[2] < 5 ? "I" * array[2] : "V" + "I" * (array[2] -5))) : ("L" + ("X" * (array[1] - 5)) + (array[2] < 5 ? "I" * array[2] : "V" + "I" * (array[2] - 5))))
      end
    elsif a_length == 4
      return "M" * array[0] + (array[1] < 5 ? ("C" * array[1] + (array[2] < 5 ? ("X" * array[2] + (array[3] < 5 ? "I" * array[3] : "V" + "I" * (array[3] - 5))) : ("L" + ("X" * (array[2] - 5)) + (array[3] < 5 ? "I" * array[3] : "V" + "I" * (array[3] - 5))))) : ("D" + ("C" * (array[1] - 5)) + (array[2]< 5 ? ("X" * array[2] + (array[3] < 5 ? "I" * array[3] : "V" + "I" * (array[3] -5))) : ("L" + ("X" * (array[2] - 5)) + (array[3] < 5 ? "I" * array[3] : "V" + "I" * (array[3] - 5))))))
    end
end

old_roman_numeral 1