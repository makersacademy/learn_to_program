def old_roman_numeral num
  
  romanString=""
  thousands=num/1000
  left=num-thousands*1000
  
  if thousands > 0
      romanString=romanString+"M"*thousands
  end
  
  #Thousands are now added to romanString.
  #'left' now has thousands removed, and remains untouched if num was <1000.
  
  five_hundreds=left/500
  left=left-five_hundreds*500
  
  if five_hundreds > 0
    romanString=romanString+"D"*five_hundreds
  end
  
  #500s are now added to romanString.
  #'left' now has 500s removed, and remains untouched if num was <500.
  
  hundreds=left/100
  left=left-hundreds*100
  
  if hundreds > 0
    romanString=romanString+"C"*hundreds
  end
  
  #100s are now added to romanString.
  #'left' now has 100s removed, and remains untouched if num was <100.
  
  fifties=left/50
  left=left-fifties*50
  
  if fifties > 0
    romanString=romanString+"L"*fifties
  end
  
  #50s are now added to romanString.
  #'left' now has 50s removed, and remains untouched if num was <50.
  
  tens=left/10
  left=left-tens*10
  
  if tens > 0
    romanString=romanString+"X"*tens
  end
  
  #10s are now added to romanString.
  #'left' now has 10s removed, and remains untouched if num was <10.
  
  fives=left/5
  left=left-fives*5
  
  if fives > 0
    romanString=romanString+"V"*fives
  end
  
  #5s are now added to romanString.
  #'left' now has 5s removed, and remains untouched if num was <5.
  
  ones=left/1
  left=left-ones*1
  
  if ones > 0
    romanString=romanString+"I"*ones
  end
  
  #1s are now added to romanString.
  #'left' now has 1s removed, and remains untouched if num was <1.
  
  romanString
end

puts old_roman_numeral(3641)
puts old_roman_numeral(641)
puts old_roman_numeral(1)
puts old_roman_numeral(666)
puts old_roman_numeral(11111)