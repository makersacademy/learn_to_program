def roman_numeral num
  roman_number = ''
    while num >= 1
      if num >= 1000
        roman_number.concat('M' * (num/1000).to_i)
        num = num % 1000
      elsif num >= 500
        roman_number.concat('D' * (num/500).to_i)
        num = num % 500
      elsif num >= 100
        roman_number.concat('C' * (num/100).to_i)
        num = num % 100
      elsif num >= 50
        roman_number.concat('L' * (num/50).to_i)
        num = num % 50
      elsif num >= 10
        roman_number.concat('X' * (num/10).to_i)
        num = num % 10
      elsif num == 9
        roman_number.concat('IX')
        num = num - 9
      elsif num >= 5
        roman_number.concat('V' * (num/5).to_i)
        num = num % 5
      elsif num == 4
        roman_number.concat('IV')
        num = num - 4
      elsif num >= 1
        roman_number.concat('I' * (num/1).to_i)
        num = num % 1
      end
    end

  return roman_number
end
