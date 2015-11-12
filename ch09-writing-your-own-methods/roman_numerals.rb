def roman_numeral num
  roman = ''
    if num / 1000 > 0
  	  division = num / 1000
  	  roman << 'M' * division
  	  num = num - (division * 1000)
    end
    if num / 100 > 0
      if (num / 100) == 9
        roman << 'CM'
      elsif (num / 100) == 8
        roman << 'DCCC'
      elsif (num / 100) == 7
        roman << 'DCC'
      elsif (num / 100) == 6
        roman << 'DC'
      elsif (num / 100) == 5
        roman << 'D'
      elsif (num / 100) == 4
        roman << 'CD'
      else
        division = num / 100
        roman << 'C' * division
      end
      num = num - ((num/100)*100)
    end
    if num / 10 > 0
      if (num / 10) == 9
        roman << 'XC'
      elsif (num / 10) == 8
        roman << 'LXXX'
      elsif (num / 10) == 7
        roman << 'LXX'
      elsif (num / 10) == 6
        roman << 'LX'
      elsif (num / 10) == 5
        roman << 'L'
      elsif (num / 10) == 4
        roman << 'XL'
      else
        division = num / 10
        roman << 'X' * division
      end
      num = num - ((num/10)*10)
    end
    if num / 1 > 0
      if (num / 1) == 9
        roman << 'IX'
      elsif (num / 1) == 8
        roman << 'VIII'
      elsif (num / 1) == 7
        roman << 'VII'
      elsif (num / 1) == 6
        roman << 'VI'
      elsif (num / 1) == 5
        roman << 'V'
      elsif (num / 1) == 4
        roman << 'IV'
      else
        division = num / 1
        roman << 'I' * division
      end
    end
    return roman
  end
