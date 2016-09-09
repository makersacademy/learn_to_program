def roman_numeral number

  m = 0
  cm = 0
  d = 0
  cd = 0
  c = 0 
  xc = 0
  l = 0
  xl = 0
  x = 0
  ix = 0
  v = 0
  iv = 0
  i = 0

  if number >= 1000 
    m = number/1000
    number = number%1000
    
  end

  if number >= 900 
    cm = number/900
    number = number%900
    
  end
  
  if number >= 500 
    d = number/500
    number = number%500
    
  end

  if number >= 400 
    cd = number/400
    number = number%400
    
  end

  if number >= 100
    c = number/100
    number = number%100
    
  end
  
  if number >= 90 
    xc = number/90
    number = number%90
    
  end
  
  if number >= 50 
    l = number/50
    number = number%50
    
  end

  if number >= 40 
    xl = number/40
    number = number%40
    
  end
    
  if number >= 10
    x = number/10
    number = number%10
    
  end 
  
  if number >= 9 
    ix = number/9
    number = number%9
    
  end
  
  if number >= 5 
    v = number/5
    number = number%5
    
  end

  if number >= 4
    iv = number/4
    number = number%4
    
  end
  
  if number < 4
    i = number/1
    number = number%10
    
  end

  return "M" * m + "CM" * cm + "D" * d + "CD" * cd + "C" * c + "XC" * xc + "L" * l + "XL" * xl + "X" * x + "IX" * ix + "V" * v + "IV" * iv + "I" * i

end
