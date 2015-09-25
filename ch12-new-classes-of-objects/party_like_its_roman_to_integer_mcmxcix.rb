def roman_to_integer roman
  # 4's

  n = [[/IV/,' 4'],[/XL/,' 40'],[/CD/,' 400'],[/CM/, ' 900'],[/XC/, ' 90'],[/IX/, ' 9'],[/M/, ' 1000'],
              [/D/, ' 500'],[/C/, ' 100'],[/L/, ' 50'],[/X/, ' 10'],[/V/, ' 5'],[/I/, ' 1']]
  roman.upcase!
  c = 0
  while c < 13
    roman.gsub!(n[c][0], n[c][1])
    c += 1
  end

  p = (roman.split(' ').map{|x| x.to_i}).reduce(:+)
  
end

