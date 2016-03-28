def old_string_numeral(num)
 # I = 1, V = 5, X = 10, L = 50, C = 100, D = 500, M = 1000
 
thousands = num / 1000

five_huns = (num % 1000) / 500

huns = ((num % 1000) % 500) / 100

fifties = (((num % 1000) % 500) % 100) / 50

tens = ((((num % 1000) % 500) % 100) % 50) / 10

fives = (((((num % 1000) % 500) % 100) % 50) % 10) / 5

ones = ((((((num % 1000) % 500) % 100) % 50) % 10) % 5) 

m = ("M" * thousands)
d = ("D" * five_huns)
c = ("C" * huns)
l = ("L" * fifties)
x = ("X" * tens)
v = ("V" * fives)
i = ("I" * ones)


string = "#{m+d+c+l+x+v+i}"
string

end
