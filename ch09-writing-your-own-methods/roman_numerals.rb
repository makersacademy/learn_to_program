def roman_numeral num
letters = %w[ M     D    C    L   X   V  I ]
values  =   [ 1000, 500, 100, 50, 10, 5, 1 ]
lv = letters.zip values
lv.insert(-2, ["IV", 4])
lv.insert(-4, ["IX", 9])
lv.to_h
roman = ""

lv.each do |pair|
letter = pair[0]
value = pair[1]
roman += letter*(num / value)
num = num % value
end

return roman

end


p roman_numeral(1999)
#c=0
#lv.map{|l,v| c, num = num.divmod v; l*c}.join ''
