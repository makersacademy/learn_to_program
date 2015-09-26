def roman_to_integer roman
  roman = roman.downcase
  number = 0
  number += (roman.count 'i') if roman.include? 'i'  
  number += 5 if roman.include? 'v'
  number += 10 * (roman.count 'x') if roman.include? 'x'
  number += 50 if roman.include? 'l'
  number += 100 * (roman.count 'c') if roman.include? 'c'
  number += 1000 * (roman.count 'm')

  number -= 2 if roman.include?('iv') || roman.include?('ix')
  number -= 20 if roman.include?('xl') || roman.include?('xc')
  number -= 200 if roman.include? 'cm'
  number
end
