def roman_to_integer(rn)
  
  numerals = {'I' => 1,'V' => 5, 'X' => 10, 'L' => 50, 'C' => 100, 'D' => 500, 'M' => 1000 }
  sum = 0; rn.upcase!
  
  if rn.include?('CM')
    sum += 900
    rn.gsub!(/CM/, '')
  end
  if rn.include?('CD')
    sum += 400
    rn.gsub!(/CD/, '')
  end
  if rn.include?('XC')
    sum += 90
    rn.gsub!(/XC/, '')
  end
  if rn.include?('XL')
    sum += 40
    rn.gsub!(/XL/, '')
  end
  if rn.include?('IX')
   	sum += 9
    rn.gsub!(/IX/, '')
  end
  if rn.include?('IV')
    sum += 4
    rn.gsub!(/IV/, '')
  end

  rn.split('').each { |i| sum += numerals[i] }
  sum 
   
end