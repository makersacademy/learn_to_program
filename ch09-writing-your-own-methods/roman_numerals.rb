def roman_numeral num
  
  romanString=""
  thousands=num/1000
  left=num-thousands*1000
  
  if thousands > 0
      romanString=romanString+"M"*thousands
  end
  
  #Thousands are now added to romanString.
  #'left' now has thousands removed, and remains untouched if num was <1000.
  
  #This section deals with numbers 900-999.
  if left > 899 && left <1000
     romanString=romanString+"CM"
     left=left-900
  end
  
  five_hundreds=left/500
  left=left-five_hundreds*500
  
  if five_hundreds > 0
    romanString=romanString+"D"*five_hundreds
  end
  
  #500s are now added to romanString.
  #'left' now has 500s removed, and remains untouched if num was <500.
  
  hundreds=left/100
  left=left-hundreds*100
  
  
  if hundreds > 0 && hundreds != 4
    romanString=romanString+"C"*hundreds
  elsif hundreds ==4
    romanString=romanString+"CD"
  end
  
  #100s are now added to romanString.
  #'left' now has 100s removed, and remains untouched if num was <100.
  
  #This section deals with numbers 90-99
  if left > 89 && left <100
     romanString=romanString+"XC"
     left=left-90
  end
  
  fifties=left/50
  left=left-fifties*50
  
  if fifties > 0
    romanString=romanString+"L"*fifties
  end
  
  #50s are now added to romanString.
  #'left' now has 50s removed, and remains untouched if num was <50.
  
  tens=left/10
  left=left-tens*10
  
  if tens > 0 && tens != 4
    romanString=romanString+"X"*tens
  elsif tens ==4
    romanString=romanString+"XL"
  end
  
  #10s are now added to romanString.
  #'left' now has 10s removed, and remains untouched if num was <10.
  
  #This section deals with number 9
  if left == 9
      romanString=romanString+"IX"
      left=left-9
  end
  
  fives=left/5
  left=left-fives*5
  
  if fives > 0
    romanString=romanString+"V"*fives
    #do I need '*fives' on the line above?
  end
  
  #5s are now added to romanString.
  #'left' now has 5s removed, and remains untouched if num was <5.
  
  ones=left/1
  left=left-ones*1
  
  if ones > 0 && ones !=4
    romanString=romanString+"I"*ones
    elsif ones == 4
    romanString=romanString+"IV"
  end
  
  #1s are now added to romanString.
  #'left' now has 1s removed, and remains untouched if num was <1.
  
  romanString
end

puts "9999: "+roman_numeral(9999)
puts "900: "+roman_numeral(900)
puts "990: "+roman_numeral(990)
puts "999: "+roman_numeral(999)
puts "4444: "+roman_numeral(4444)
puts "400: "+roman_numeral(400)
puts "440: "+roman_numeral(440)
puts "444: "+roman_numeral(444)
puts
puts "1234: "+roman_numeral(1234)
puts "4321: "+roman_numeral(4321)
puts "1: "+roman_numeral(1)
puts "11: "+roman_numeral(11)

