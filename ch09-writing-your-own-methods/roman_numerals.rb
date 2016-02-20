def roman_numeral num
  ref = [['M',1000],['CM',900],['D',500],['CD',400],['C',100],['XC',90],['L',50],['XL',40],['X',10],['IX',9],['V',5],['IV',4],['I',1]]


  result = ''
  ref.each do |ary|

    result << (ary[0]) * (num / ary[1])

    num = num % ary[1]
  end


  result
end

# puts roman_numeral 3500
# puts roman_numeral 1989
# puts roman_numeral 1720
# puts roman_numeral 13