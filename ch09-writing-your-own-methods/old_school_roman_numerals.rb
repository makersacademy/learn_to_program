def old_roman_numeral num
  ref = [['M',1000],['D',500],['C',100],['L',50],['X',10],['V',5],['I',1]]


  result = ''
  ref.each do |ary|

    result << (ary[0]) * (num / ary[1])

    num = num % ary[1]
  end


  result
end

# puts old_roman_numeral 3500
# puts old_roman_numeral 1720
# puts old_roman_numeral 13