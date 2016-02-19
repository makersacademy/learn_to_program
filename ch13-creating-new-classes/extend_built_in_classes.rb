class Integer
  def factorial
    return "You can't take the factorial of a negative number!" if self < 0
    if self <= 1
      1
    else
      self * (self - 1).factorial
    end
 end

  def to_english
    return 'Please enter a number that isn\'t negative.' if self < 0
    return 'zero' if self == 0

    num_string = ''
    ones_place = %w(one two three four five six seven eight nine)
    tens_place = %w(ten twenty thirty forty fifty sixty seventy eighty ninety)
    teenagers = %w(eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen)
    powers_of_ten = {
      (10**63) => 'vigintillion',
      (10**60) => 'novemdecillion',
      (10**57) => 'octodeceillion',
      (10**54) => 'septendecillion',
      (10**51) => 'sexdecillion',
      (10**48) => 'quindecillion',
      (10**45) => 'quattuordecillion',
      (10**42) => 'tredecillion',
      (10**39) => 'duodecillion',
      (10**36) => 'undecillion',
      (10**33) => 'decillion',
      (10**30) => 'nonillion',
      (10**27) => 'octillion',
      (10**24) => 'septillion',
      (10**21) => 'sextillion',
      (10**18) => 'quintillion',
      (10**15) => 'quadrillion',
      (10**12) => 'trillion',
      (10**9) => 'billion',
      1_000_000 => 'million',
      1000 => 'thousand'
    }
    left = self
    powers_of_ten.each do |k, v|
      write = left / k
      left -= write * k
      num_string << "#{write.to_english} #{v}" if write > 0
      num_string << ' ' if left > 0 && write > 0
    end

    write = left / 100
    left -= write * 100

    if write > 0
      hundreds = write.to_english
      num_string = num_string + hundreds + ' hundred'
      num_string += ' ' if left > 0
    end

    write = left / 10
    left -= write * 10

    if write > 0
      if (write == 1) && (left > 0)
        num_string += teenagers[left - 1]
        left = 0
      else
        num_string += tens_place[write - 1]
      end
      num_string += '-' if left > 0
    end
    write = left
    left = 0
    num_string += ones_place[write - 1] if write > 0
    num_string
  end

  def to_new_roman
    _num = self
    raise 'Value out of range' if _num >= 10**5
    roman = %w(M CM D CD C XC L XL X IX V IV I)
    arab = [1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1]
    values = roman.zip(arab)
    c = 0

    values.map do |l, v|
      c, _num = _num.divmod v
      l * c
    end.join ''
  end
  def to_roman
    num = self
    roman = ''

    roman << 'M' * (num / 1000)
    roman << 'D' * (num % 1000 / 500)
    roman << 'C' * (num % 500 / 100)
    roman << 'L' * (num % 100 / 50)
    roman << 'X' * (num % 50 / 10)
    roman << 'V' * (num % 10 / 5)
    roman << 'I' * (num % 5 / 1)

    roman
  end
end
