def roman_numeral number
  left = number
  #numerals = {1=>"I",4=>"IV"5=>"V",9=>"IX",10=>"X",50=>"L",100=>"C",500=>"D",1000=>"M"}
  display = ""
  display += 'M' * (number /1000)
  display += 'D' * (number%1000/500)
  display += 'C' * (number%500/100)
  display += 'L' * (number%100/50)
  display += 'X' * (number%50/10)
  display += 'V' * (number%10/5)
  display += 'I' * (number%5/1)


  return display.gsub(/VIIII|IIII|/, "IIII"=> "IV", "VIIII"=>"IX")



end
roman_numeral 19