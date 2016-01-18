

def roman_numeral number


	#I = 1 V = 5 X = 10 L = 50 C = 100 D = 500 M = 1000

	#IV = 4  IX = 9  XL = 40  XC = 90  CD = 400  CM = 900

m_length = 0
d_length = 0
c_length = 0
l_length = 0
x_length = 0
v_length = 0
i_length = 0
iv_length = 0
ix_length = 0
xl_length = 0
xc_length = 0
cd_length = 0
cm_length = 0

if number >= 1000
m_length = number/1000
number = number%1000
end

if number >= 900
cm_length = number/900
number = number%900
end


if number >= 500
d_length = number/500
number = number%500
end

if number >= 400
cd_length = number/400
number = number%400
end


if number >= 100
c_length = number/100
number = number%100
end

if number >= 90
xc_length = number/90
number = number%90
end


if number >= 50
l_length = number/50
number = number%50
end

if number >= 40
xl_length = number/40
number = number%40
end


if number >= 10
x_length = number/10
number = number%10
end

if number >= 9
ix_length = number/9
number = number%9
end

if number >= 5
v_length = number/5
number = number%5
end

if number >= 4
iv_length = number/4
number = number%4
end

if number < 4
i_length = number/1
number = number%4 # if the number is devisable by 10 
end

 'M'*m_length + "CM"*cm_length + 'D'*d_length + 'CD'*cd_length + 'C'*c_length +
'XC'*xc_length + 'L'*l_length + 'XL'*xl_length + 'X'*x_length + 'IX'*ix_length +
'V'*v_length + 'IV'*iv_length + 'I'*i_length
end

