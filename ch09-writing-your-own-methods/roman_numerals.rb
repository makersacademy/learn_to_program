def roman num
	print 'M' * (num/1000)
	num = num%1000

	if (num/100 == 9)
		print 'CM'
		num = num - 900
	else
		print 'D' * (num/500)
	end
	num = num%500
	

	if (num/100 == 4)
		print 'CD'
		num = num - 400
	else
		print 'C' * (num/100)
	end
	num = num%100

	if (num/10 == 9)
		print 'XC'
		num = num - 90
	else
		print 'L' * (num/50)
	end
	num = num%50

	if (num/10 == 4)
		print 'XL'
		num = num - 40
	else
	print 'X' * (num/10)
	end
	num = num%10

	if (num == 9)
		print 'IX'
	elsif (num == 4)
		print 'IV'
	else
	print 'V' * (num/5)
	num = num%5
	print 'I' * num
	end

	puts
end

roman 9
roman 10
roman 4
roman 1410
roman 999
roman 4