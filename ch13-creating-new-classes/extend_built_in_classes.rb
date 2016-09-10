class Integer
  def factorial
    if self < 0
      return 'You can\'t take the factorial of a negative number!'
    end
    if self <= 1
      1
    else
      self * (self-1).factorial
    end
  end

  def to_roman
    if self < 0  # No negative numbers.
        return 'Please enter a number that isn\'t negative.'
      end
    if self == 0
      return 'zero'
    end

    num_string = ""

    onesPlace = ["I", "II", "III", "IIII", "V", "VI", "VII", "VIII", "VIIII"]
    tensPlace = ['X', 'XX', 'XXX','XXXX', 'L', 'LX', 'LXX', 'LXXX', 'LXXXX']
    hundredsPlace = ["C", "CC", "CCC", "CCCC", "D", "DC", "DCC", "DCCC", "DCCCC"]
    thousandsPlace = ["M", "MM", "MMM", "MMMM", "MMMMM"]

    remainder = self

    current = remainder/1000
    remainder -= (current*1000)

    if current  > 0
    num_string = num_string + thousandsPlace[current-1]
    end

    current = remainder/100 #how many hundreds we have to write out
    remainder -= (current*100)

    if current > 0
        num_string = num_string + hundredsPlace[current-1]
    end

    current = remainder/10
    remainder -= (current*10)

    if current > 0
      num_string = num_string + tensPlace[current-1]
    end

    current = remainder
    remainder = 0

    if current > 0
      num_string = num_string + onesPlace[current-1]
    end

    num_string
  end

end
