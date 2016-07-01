def old_roman_numeral num
letters = %w[ M     D    C    L   X   V  I ]
values  =   [ 1000, 500, 100, 50, 10, 5, 1 ]
lv = letters.zip values


  c=0
  lv.map{|l,v| c, num = num.divmod v; l*c}.join ''

end
 p old_roman_numeral(9)
