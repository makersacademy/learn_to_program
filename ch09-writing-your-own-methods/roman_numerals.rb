def roman_numeral(num)
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
    new_roman_numeral(result)
end
   
def new_roman_numeral(num)
    
    new_romans = {"DCCCC"=>"CM", "CCCC"=>"CD", "LXXXX"=>"XC", "XXXX"=>"XL", "VIIII"=>"IX", "IIII"=>"IV"}

    new_romans.each do |old, new|
        num.gsub!(/#{old}/, old => new)
    end
    num
end