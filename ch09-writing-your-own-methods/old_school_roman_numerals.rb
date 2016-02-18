def old_roman_numerals(number)
  more = number.divmod(10)
  more2 = number.divmod(100)
  more3 = number.divmod(1000)
  if (1000..4999).include? number
    "M"*more3.at(0) + roman_numerals(more3.at(1))
  elsif (500..999).include? number
    "D" + "C"*(more2.at(0)-5) + roman_numerals(more2.at(1))
  elsif (100..499).include? number
     "C"*more2.at(0) + roman_numerals(more2.at(1))
  elsif (10..49).include? number
    if more.at(1) < 5
       "X"*more.at(0) + "I"*more.at(1)
    elsif more.at(1) == 5
       "X"*more.at(0) + "V"
    elsif more.at(1) > 5
       "X"*more.at(0) + "V" + "I"*(more.at(1)-5)
    end
  elsif (50..99).include? number
      if more.at(1) < 5
         "L" + "X"*(more.at(0)-5) + "I"*more.at(1)
      elsif more.at(1) == 5
         "L" + "X"*(more.at(0)-5) + "V"
      elsif more.at(1) > 5
         "L" + "X"*(more.at(0)-5) + "V" + "I"*(more.at(1)-5)
      end
  elsif (1..9).include? number
    if number < 5
      "I" * number
    elsif number == 5
      "V"
    elsif number > 5
      "V" + "I"*(number-5)
    end
  end

end


puts roman_numerals(1009)
