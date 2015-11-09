def old_roman_numeral(num)
  roman = {1000=>'M', 500 => 'D', 100 => 'C', 50 => 'L', 10 => 'X', 5 => 'V', 1 =>'I'}
  
  result=''

  roman.each do |english_value ,numeral|
     
       
   divide = (num / english_value) 
        if divide > 0
            result << numeral * divide
        end
   remainder = num % english_value
   num = remainder
end
   puts result
end