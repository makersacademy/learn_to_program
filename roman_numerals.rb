def roman_numeral num


m = num / 1000
d = num % 1000 / 500
c = num % 1000 / 100
l = num % 100 / 50
x = num % 100 / 10
v = num % 10 / 5
i = num % 10

print 'M'*m
if c == 9 
	print 'CM' 
elsif c == 4 
	print 'CD'
else 
	print 'D'*d
	print 'C'* (num % 500 / 100)
end
if x == 9
	print 'XC'
elsif x == 4 
	print 'XL'
else
	print 'L'*l
	print 'X'* (num % 50 / 10)
end
if i == 9 
	print 'IX'
elsif i == 4
	print 'IV'
else
print 'V'*v
print 'I'* (num % 5)
end
end

puts roman_numeral(3759)
=begin
print m
print d
print c
print l
print x
print v
print i
=end