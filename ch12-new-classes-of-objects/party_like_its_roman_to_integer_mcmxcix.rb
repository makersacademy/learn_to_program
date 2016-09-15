def roman_to_integer roman
  roman.upcase!
  num = 0
  roman.each_char do |l|
    case l
    when 'M'
      num += 1000
    when 'D'
      num += 500
    when 'C'
      num += 100
    when 'L'
      num += 50
    when 'X'
      num += 10
    when 'V'
      num += 5
    when 'I'
      num += 1
    end
  end
  if roman.include?('CM') or roman.include?('CD')
    num -= 200
  end
  if roman.include?('XC') or roman.include?('XL')
    num -= 20
  end
  if roman.include?('IX') or roman.include?('IV')
    num -= 2
  end
  num
end