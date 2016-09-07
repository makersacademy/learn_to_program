# modified my old_school_roman_numerals.rb, where I included in my initial ternary operator for "a_length == 1", 
# a ternary operator for each condition for "array[0] == 4" and "array[0] == 9", and added them through
# my code. I will probably not use ternary operators in such a way next time...

def roman_numeral num
  array = num.to_s.chars.map(&:to_i)
  a_length = array.length
    if a_length == 1
      array[0] < 5 ? (array[0] == 4 ? "IV" : "I" * array[0]) : (array[0] == 9 ? "IX" : "V" + "I" * (array[0] - 5))
    elsif a_length == 2
      if num < 50
        "X" * array[0] + (array[1] < 5 ? (array[1] == 4 ? "IV" : "I" * array[1]) : (array[1] == 9 ? "IX" : "V" + "I" * (array[1] - 5)))
      else
        "L" + ("X" * (array[0] - 5)) + (array[1] < 5 ? (array[1] == 4 ? "IV" : "I" * array[1]) : (array[1] == 9 ? "IX" : "V" + "I" * (array[1] - 5)))
      end
    elsif a_length == 3
      if num < 500
        "C" * array[0] + (array[1] < 5 ? ("X" * array[1] + (array[2] < 5 ? (array[2] == 4 ? "IV" : "I" * array[2]) : (array[2] == 9 ? "IX" : "V" + "I" * (array[2] - 5)))) : ("L" + ("X" * (array[1] - 5)) + (array[2] < 5 ? (array[2] == 4 ? "IV" : "I" * array[2]) : (array[2] == 9 ? "IX" : "V" + "I" * (array[2] - 5)))))
      else
        "D" + ("C" * (array[0] - 5)) + (array[1] < 5 ? ("X" * array[1] + (array[2] < 5 ? (array[2] == 4 ? "IV" : "I" * array[2]) : (array[2] == 9 ? "IX" : "V" + "I" * (array[2] -5)))) : ("L" + ("X" * (array[1] - 5)) + (array[2] < 5 ? (array[2] == 4 ? "IV" : "I" * array[2]) : (array[2] == 9 ? "IX" : "V" + "I" * (array[2] - 5)))))
      end
    elsif a_length == 4
      "M" * array[0] + (array[1] < 5 ? ("C" * array[1] + (array[2] < 5 ? ("X" * array[2] + (array[3] < 5 ? (array[3] == 4 ? "IV" : "I" * array[3]) : (array[3] == 9 ? "IX" : "V" + "I" * (array[3] - 5)))) : ("L" + ("X" * (array[2] - 5)) + (array[3] < 5 ? (array[3] == 4 ? "IV" : "I" * array[3]) : (array[3] == 9 ? "IX" : "V" + "I" * (array[3] - 5)))))) : ("D" + ("C" * (array[1] - 5)) + (array[2]< 5 ? ("X" * array[2] + (array[3] < 5 ? (array[3] == 4 ? "IV" : "I" * array[3]) : (array[3] == 9 ? "IX" : "V" + "I" * (array[3] -5)))) : ("L" + ("X" * (array[2] - 5)) + (array[3] < 5 ? (array[3] == 4 ? "IV" : "I" * array[3]) : (array[3] == 9 ? "IX" : "V" + "I" * (array[3] - 5)))))))
    end
end