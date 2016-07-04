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
    thousands = self / 1000
    hundreds = (self % 1000) / 100
    tens = (self % 100) / 10
    singles = self % 10
    new_num =''
    new_hundreds=''
    new_tens=''
    new_singles=''

    thousands.times {new_num << 'M'}

  if hundreds == 4
    new_hundreds = 'CD'
  elsif hundreds == 9
    new_hundreds = "CM"
  else
    hundreds < 5 ? ((hundreds.times {new_hundreds << 'C'}) if hundreds > 0) : ((hundreds-5).times {new_hundreds <<'C'} ; new_hundreds = 'D' << new_hundreds)
  end


  if tens == 4
    new_tens = 'XL'
  elsif tens == 9
    new_tens = 'XC'
  else
    tens < 5 ? (tens.times {new_tens << 'X'}) : ((tens-5).times {new_tens <<'X'} ; new_tens = 'L' << new_tens)
  end

  if singles == 4
    new_singles = 'IV'
  elsif singles == 9
    new_singles = 'IX'
  else
    singles < 5 ? (singles.times {new_singles << 'I'}) :  ((singles-5).times {new_singles <<'I'} ; new_singles = 'V' << new_singles)
  end



  new_num << new_hundreds << new_tens << new_singles

  end


end

puts  7.factorial
puts 73.to_roman
