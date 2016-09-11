def old_roman_numeral num
 	left_over = num
 	roman_num = []

 	if num >= 1000
 		(num / 1000).times { roman_num.push("M") }
 		left_over = num % 1000
 	end

  	if left_over >= 500
  		roman_num.push("D")
  		left_over = left_over - 500
  	end

  	if left_over >= 100
  	 	(left_over / 100).times { roman_num.push("C") }
		left_over = left_over % 100
	end

	if left_over >= 50
		roman_num.push("L")
		left_over = left_over - 50
 	end


 	if left_over < 50
 		(left_over / 10).times { roman_num.push("X") }
		left_over = left_over % 10
	end

	if  left_over < 10
		if left_over == 5
     		roman_num.push("V")
     	elsif left_over < 5
     		left_over.times{ roman_num.push("I") }
     	else left_over > 5
		    roman_num.push("V")
		    left_over = left_over - 5
			left_over.times{ roman_num.push("I") }
		end
	end
 	roman_num.join()
end

# old_roman_numeral 1
# old_roman_numeral 5
# old_roman_numeral 10
# old_roman_numeral 50
# old_roman_numeral 100
# old_roman_numeral 500
# old_roman_numeral 1000
