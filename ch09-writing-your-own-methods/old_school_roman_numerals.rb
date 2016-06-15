def old_roman_numeral num

  	left = num % 1000
  	right = (num - left) / 1000

  	if right > 0
  		right.times {print "M"}
  	end
  	num = left

  	left = num % 100
  	right = (num - left) / 100

  	if (right > 0) && (right >= 5)
  		print "D"
  		(right - 5).times {print "C"}
  	elsif (right > 0) && (right < 5)
  		right.times {print "C"}
  	end
  	num = left

  	left = num % 10
  	right = (num - left) / 10

  	if (right > 0) && (right >= 5)
  		print "L"
  		(right - 5).times {print "X"}
  	elsif (right > 0) && (right < 5)
  		right.times {print "X"}
  	end
  	right = left

  	if (right > 0) && (right >= 5)
  		print "V"
  		(right - 5).times {print "I"}
  	elsif (right > 0) && (right < 5)
  		right.times {print "I"}
  	end
  	puts  # your code here
end
