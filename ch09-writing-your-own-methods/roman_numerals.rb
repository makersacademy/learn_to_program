def roman_numeral num 
    tho = (num / 1000)
    hun = (num % 1000 / 100)
    ten = (num % 100 / 10)
    one = (num % 10)

    res = 'M' * tho

    if hun == 9
      res = res + 'CM'
    elsif hun == 4 
      res = res + 'CD'
    else
      res = res + 'D' * (num % 1000 / 500)
      res = res + 'C' * (num % 500 / 100) 
    end

    if ten == 9 
      res = res + 'XC'
    elsif ten == 4 
      res = res + 'XL'
    else
      res = res + 'L' * (num % 100 / 50)
      res = res + 'X' * (num % 50 / 10) 
    end

    if one == 9 
      res = res + 'IX'
    elsif one == 4 
      res = res + 'IV'
    else
      res = res + 'V' * (num % 10 / 5)
      res = res + 'I' * (num % 5 / 1) 
    end
    res
end
