def roman_numeral num
 	left_over = num
 	roman_num = []

 	if num >= 1000
 		(num / 1000).times { roman_num.push("M") }
 		left_over = num % 1000
 	end

  	if left_over >= 500
  	 	if left_over >= 900
		roman_num.push("CM")
  		left_over = left_over - 900
		else 
  		roman_num.push("D")
  		left_over = left_over - 500
  		end
  	end

  	if left_over >= 100
  	 	if left_over >= 400
		roman_num.push("CD")
		left_over = left_over - 400
		else 
  	 	(left_over / 100).times { roman_num.push("C") }
		left_over = left_over % 100
		end
	end

	if left_over >= 50
		if left_over >= 90
		roman_num.push("XC")
		left_over = left_over - 90
		else 
		roman_num.push("L")
		left_over = left_over - 50
 		end
 	end


 	if left_over < 50
 		if left_over  >= 40
 		roman_num.push("XL")
 		left_over = left_over - 40
 		else 
 		(left_over / 10).times { roman_num.push("X") }
		left_over = left_over % 10
		end
	end

	if  left_over < 10
		if left_over == 4
			roman_num.push("IV")
		elsif left_over == 5
     		roman_num.push("V")
		elsif left_over == 9
			roman_num.push("IX")
     	elsif left_over < 4
     		left_over.times{ roman_num.push("I") }
     	else left_over > 5 && left_over < 9
		    roman_num.push("V")
		    left_over = left_over - 5
			left_over.times{ roman_num.push("I") }
		end
	end
 	roman_num.join()
end