class Integer
  def factorial
    x = 1; for i in 1..self; x *= i; end; x
  end

#######
### commented out, test was looking for the old roman num style
  #def to_roman
  #  mod_roman_num = ''
  #  #M line doesnt need any conditions to change as we are only converting numbers up to ~3000
  #    mod_roman_num << 'M' * (self / 1000)
  #  #else ifs to determine whether CM or CD is needed
  #    if (self % 1000 / 100) == 9
  #      mod_roman_num << 'CM'
  #    elsif (self % 1000 / 100) == 4
  #      mod_roman_num << 'CD'
  #    else
  #    #if the number isnt x9xx or x4xx then concat D + C as normal
  #      mod_roman_num << 'D' * (self % 1000 / 500)
  #      mod_roman_num << 'C' * (self % 500 / 100)
  #    end
#
  #    if (self % 100 / 10) == 9
  #      mod_roman_num << 'XC'
  #    elsif (self % 100 / 10) == 4
  #      mod_roman_num << 'XL'
  #    else
  #    #same but with xx9x or xx4x and concat L + X as normal
  #      mod_roman_num << 'L' * (self % 100 / 50)
  #      mod_roman_num << 'X' * (self % 50 / 10)
  #    end
#
  #    #lastly for V and I
  #    if (self % 10) == 9
  #      mod_roman_num << 'IX'
  #    elsif (self % 10) == 4
  #      mod_roman_num << 'IV'
  #    else
  #    #same but with xxx9 or xxx4 and concat V + I as normal
  #      mod_roman_num << 'V' * (self % 10 / 5)
  #      mod_roman_num << 'I' * (self % 5 / 1)
  #    end
  #
#
  #    #for future : should definitely make variables for the respective (num % x / y)
  #  return mod_roman_num
  #end

  def to_roman
    old_roman_num = ''

      old_roman_num << 'M' * (self / 1000)

      old_roman_num << 'D' * (self % 1000 / 500)

      old_roman_num << 'C' * (self % 500 / 100)

      old_roman_num << 'L' * (self % 100 / 50)

      old_roman_num << 'X' * (self % 50 / 10)

      old_roman_num << 'V' * (self % 10 / 5)

      old_roman_num << 'I' * (self % 5 / 1)

    return old_roman_num
  end


end
