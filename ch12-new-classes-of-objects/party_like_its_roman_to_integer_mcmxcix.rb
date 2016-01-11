def roman_to_integer roman
  dic = {"i" => 1, "v" => 5, "x" => 10, "l" => 50, "c" => 100, "d" => 500, "m" => 1000}
    
   
   dic.include?(roman.downcase) ? dic[roman.downcase] : 
  
  "This is not a valid roman numeral!" if roman.match(/[^IVXLCDM]/)   
  
  res = 0
  last = 0
  ind = 0
  while ind < roman.size 
   n = dic[(roman.reverse.downcase[ind])]
   ind = ind + 1
    if n < last 
     n *= -1
    else 
     last = n 
    end
   res = res + n
 end
  res  
end
