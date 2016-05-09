def old_roman_numeral num
  letters = %w[ M     D    C    L   X   V  I ]
  values  =   [ 1000, 500, 100, 50, 10, 5, 1 ]
  romans = letters.zip(values)
  if num.between?(1, 3000)
    c = 0
    romans.map{|l,v| c, num = num.divmod v; l*c}.join ''
  end
end