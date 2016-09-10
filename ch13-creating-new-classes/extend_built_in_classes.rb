class Integer
  def factorial
    self <= 1 ? 1 : (self * (self-1).factorial) # factorials are awesome, so I used an ternary operator for this one
  end
  def to_roman                            #remake of my faboulous code from old_school_roman_numerals
    array = self.to_s.chars.map(&:to_i)
    a_length = array.length
      if a_length == 1
        array[0] < 5 ? "I" * array[0] : "V" + "I" * (array[0] - 5)
      elsif a_length == 2
        if self < 50
          "X" * array[0] + (array[1] < 5 ? "I" * array[1] : "V" + "I" * (array[1] - 5))
        else
          "L" + ("X" * (array[0] - 5)) + (array[1] < 5 ? "I" * array[1] : "V" + "I" * (array[1] - 5))
        end
      elsif a_length == 3
        if self < 500
          "C" * array[0] + (array[1] < 5 ? ("X" * array[1] + (array[2] < 5 ? "I" * array[2] : "V" + "I" * (array[2] - 5))) : ("L" + ("X" * (array[1] - 5)) + (array[2] < 5 ? "I" * array[2] : "V" + "I" * (array[2] - 5))))
        else
          "D" + ("C" * (array[0] - 5)) + (array[1] < 5 ? ("X" * array[1] + (array[2] < 5 ? "I" * array[2] : "V" + "I" * (array[2] -5))) : ("L" + ("X" * (array[1] - 5)) + (array[2] < 5 ? "I" * array[2] : "V" + "I" * (array[2] - 5))))
        end
      elsif a_length == 4
        "M" * array[0] + (array[1] < 5 ? ("C" * array[1] + (array[2] < 5 ? ("X" * array[2] + (array[3] < 5 ? "I" * array[3] : "V" + "I" * (array[3] - 5))) : ("L" + ("X" * (array[2] - 5)) + (array[3] < 5 ? "I" * array[3] : "V" + "I" * (array[3] - 5))))) : ("D" + ("C" * (array[1] - 5)) + (array[2]< 5 ? ("X" * array[2] + (array[3] < 5 ? "I" * array[3] : "V" + "I" * (array[3] -5))) : ("L" + ("X" * (array[2] - 5)) + (array[3] < 5 ? "I" * array[3] : "V" + "I" * (array[3] - 5))))))
      end
  end
end

puts [1,2,3,4,5].shuffle
puts 7.factorial
puts 73.to_roman