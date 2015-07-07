def roman_numeral num
  numerals = String.new
  thousands = (num/1000)
  hunds = ((num%1000)/100)
  tens = ((num%100)/10)
  ones = (num%10)
  
  #Push thousands
  numerals << "M" * thousands
  #Check to see if the hundreds place is 900
  if hunds == 9
      numerals << "CM"
      hunds = 0
  #Check if hundres place is 400
  elsif hunds == 4
      numerals << "CD"
  #Push five hundreds and hundres
  else
     numerals << 'D' * ((num%1000)/500)
     numerals << 'C' * ((num%500)/100) 
  end
   
  #Check to see if tens place is 90
  if tens == 9
    numerals << "XC"
  #Check to see if tens place is 40
  elsif tens == 4
    numerals << "XL"
  #Push fiftys and ens
  else
    numerals << "L" * ((num%100)/50)
    numerals << "X" * ((num%50)/10)
  end
  
  #Check to see if ones place is 9
    if ones == 9
      numerals << "IX"
  #Check to see if ones place is 4
    elsif ones == 4
      numerals << "IV"
    else
  #push fives and ones
      numerals << "V" * ((num%10)/5)
      numerals << "I" * ((num%5)/1)
    end
end

puts roman_numeral 49

    