class Array

  def shuffle
  arr.sort_by{rand}
  end

end


class Integer

  def factorial
    raise 'Must not use negative integer' if self < 0
     (self <= 1) ? 1 : self * (self-1).factorial
   end

  def old_roman_numeral

    if self <= 0
      puts "Number must be above one"
      exit
    end

    numerals = ""
    numerals << "M" * (num / 1000)
    numerals << "D" * (num % 1000 /500)
    numerals << "C" * (num % 500 / 100)
    numerals << "L" * (num % 100 / 50)
    numerals << "X" * (num % 50 / 10)
    numerals << "V" * (num % 10 / 5)
    numerals << "I" * (num % 5 / 1)
    numerals
    end



end
