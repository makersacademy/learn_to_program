
def old_roman_numeral number

  left = number
  display = ""
  roman_numerals = {1=>"I",5=>"V",10=>"X",50=>"L",100=>"C",500=>"D",1000=>"M"}
  if left >=1000
    towrite = left / 1000
    left = left % 1000
    display += "M" * towrite
  end
  if left >=500
    towrite = left / 500
    left = left % 500
    display += "D" * towrite
  end
  if left >=100
    towrite = left / 100
    left = left % 100
    display += "C" * towrite
  end
  if left >=50
    towrite = left / 50
    left = left % 50
    display += "L" * towrite
  end
  if left >=10
    towrite = left / 10
    left = left % 10
    display += "X" * towrite
  end
  if left >=5
    towrite = left / 5
    left = left % 5
    display += "V" * towrite
  end
  if left >=1
    towrite = left / 1
    left = left % 1
    display += "I" * towrite
  end

display
end
