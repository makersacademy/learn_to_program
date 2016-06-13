def roman_to_integer num
  arr = num.split('')
  sum = []
  res = 0

  arr.each do |v| 
    sum << 1000 if v == 'm' || v == 'M'
    sum << 100 if v == 'c' || v == 'C'
    sum << 50 if v == 'l' || v == 'L'
    sum << 10 if v == 'x' || v == 'X'
    sum << 5 if v == 'v' || v == 'V'
    sum << 1 if v == 'i' || v == 'I'
  end

  sum.each {|v| res += v}

    res -=2 if num.match('iv')
    res -=2 if num.match('ix')
    res -=20 if num.match('xl')
    res -=20 if num.match('xc')
    res -=200 if num.match('cm')
  
  res
end