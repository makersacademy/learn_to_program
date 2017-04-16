def roman num
	print 'M' * (num/1000)
	num = num%1000
	print 'D' * (num/500)
	num = num%500
	print 'C' * (num/100)
	num = num%100
	print 'L' * (num/50)
	num = num%50
	print 'X' * (num/10)
	num = num%10
	print 'V' * (num/5)
	num = num%5
	print 'I' * num
	puts
end

roman 800
roman 700
roman 200
roman 88
roman 999
roman 4