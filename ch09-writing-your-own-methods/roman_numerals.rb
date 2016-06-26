def roman_numeral num
  mod_roman_num = ''
  #M line doesnt need any conditions to change as we are only converting numbers up to ~3000
    mod_roman_num << 'M' * (num / 1000)
  #else ifs to determine whether CM or CD is needed
    if (num % 1000 / 100) == 9
      mod_roman_num << 'CM'
    elsif (num % 1000 / 100) == 4
      mod_roman_num << 'CD'
    else
    #if the number isnt x9xx or x4xx then concat D + C as normal
      mod_roman_num << 'D' * (num % 1000 / 500)
      mod_roman_num << 'C' * (num % 500 / 100)
    end

    if (num % 100 / 10) == 9
      mod_roman_num << 'XC'
    elsif (num % 100 / 10) == 4
      mod_roman_num << 'XL'
    else
    #same but with xx9x or xx4x and concat L + X as normal
      mod_roman_num << 'L' * (num % 100 / 50)
      mod_roman_num << 'X' * (num % 50 / 10)
    end

    #lastly for V and I
    if (num % 10) == 9
      mod_roman_num << 'IX'
    elsif (num % 10) == 4
      mod_roman_num << 'IV'
    else
    #same but with xxx9 or xxx4 and concat V + I as normal
      mod_roman_num << 'V' * (num % 10 / 5)
      mod_roman_num << 'I' * (num % 5 / 1)
    end

    #for future : should definitely make variables for the respective (num % x / y)
  return mod_roman_num
end
