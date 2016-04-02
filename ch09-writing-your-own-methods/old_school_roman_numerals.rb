def old_roman_numeral num
roman = ''

roman << 'M' * (num / 1000)

roman << 'D' * (num % 1000 / 500)

roman << 'C' * (num % 500 / 100)

roman << 'L' * (num % 100 / 50)

roman << 'X' * (num % 50 / 10)

roman << 'V' * (num % 10 / 5)

roman << 'I' * (num % 5 / 1)

roman

#  newstr = ""
#  m = num/1000
#  d = num/500
#  c = num/100
#  l = num/50
#  x = num/10
#  v = num/5

#  if m > 1
#      newstr << "M"*m.to_i
#      old_roman_numeral(num-(m*1000))
#    end
#  if (num-m*1000)/500 > 1
#        newstr << "D"*d.to_i
#        old_roman_numeral(num-(d*500))
#      end
#  if (num-d*500)/100 > 1
#        newstr << "C"*c.to_i
#        old_roman_numeral(num-(c*100))
#      end
#  if (num-c*100)/50 > 1
#        newstr << "L"*l.to_i
#        old_roman_numeral(num-(l*50))
#  end
#  if (num-l*50)/10 > 1
#        newstr << "X"*x.to_i
#        old_roman_numeral(num-(x*10))
#  end
#  if (num-x*10)/5 > 1
#        newstr << "V"*v.to_i
#        old_roman_numeral(num-(v*5))
#  end
#  if (num-v*5) % 5 != 0
#        newstr << "I"*((num-v*5) % 5)
#  else
#  end
end

