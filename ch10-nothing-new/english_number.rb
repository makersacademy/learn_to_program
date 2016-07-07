#Handles Numbers less than 999 

def small_english_number(x)	
	small_out=''		#Initialize output string
	num_left=x			#num_left is remainder of number to be written to english. 
	
	#Set up arrays 
	ones_place=['one','two','three','four','five','six','seven','eight','nine']
	teenagers=['eleven','twelve','thirteen','fourteen','fifteen','sixteen','seventeen','eighteen','nineteen']
	tens_place=['ten','twenty','thirty','forty','fifty','sixty','seventy','eighty','ninety']
				
	writing = x / 100		#writing is the current digit being written - here hundreds
	num_left-=writing*100		#reduce remainder left by write amount. This works because (Integer vs Float mean (x / 100 * 100) != x
	
	if writing > 0										#If there are hundreds in number
		hundreds = small_english_number(writing)		#Call Recursively to find tens/ones of hundreds. 
		small_out << "#{hundreds} hundred"				#Append to string 
		
		small_out << ' 'if num_left > 0					#If we still have more numbers to add, append a space. 
		
	end
	
	writing = num_left/10			#writing is the current digit being written - here tens
	num_left -= writing * 10		#reduce remainder left by write amount.
	
	if writing > 0									#If there are tens in number
		if ((writing ==1) && (num_left>0))			#And if its between 11-19
			small_out  << "#{teenagers[num_left-1]}"	#Append correct -teen number. Note adjustment for zero indexing.
			num_left = 0							#And clear the remainder (11 - is eleven not eleven and one)
		else
			small_out  << "#{tens_place[writing-1]}"	#Otherwise use the correct ten place
		end
		 small_out  << '-' if num_left > 0			#If we have one place to add, append a dash
	end
	
	writing = num_left								#writing is the current digit being written - here ones
	num_left = 0									#reduce remainder to zero.
	
	if writing > 0 									#If we have ones in the number
		small_out  << "#{ones_place[writing-1]}"		#Append correct one number. 
	end
	return small_out 								#Return output
end

#Handles Numbers over 999 and edge cases

def english_number(number)

	return 'zero' if number==0				#Handle edge case of zero
	flag=true if number<0					#Set flag for negative numbers.
	number=number.abs 						#Set number positive to translate.
	out=''									#Initalize output
	
	num_left = number						#num_left is remainder of number to be written to english. 
	
	#Set up hash of base_10 keys to words
	
	base_10={
	1000000000000000000000000000000000000000000000000=>'quindecillion',
	1000000000000000000000000000000000000000000000=>'quattuordecillion',
	1000000000000000000000000000000000000000000=>'tredecillion',
	1000000000000000000000000000000000000000=>'duodecillion',
	1000000000000000000000000000000000000=>'undecillion',
	1000000000000000000000000000000000=>'decillion',
	1000000000000000000000000000000=>'nonillion',
	1000000000000000000000000000=>'octillion',
	1000000000000000000000000=>'septillion',
	1000000000000000000000=>'sextillion',
	1000000000000000000=>'quintillion',
	1000000000000000=>'quadrillion',
	1000000000000=>'trillion',
	1000000000=>'billion',	
	1000000=>'million',
	1000=>'thousand'}	
	
	#for each base_10 key we iterate through calling the small_english_number method for the number in that basis. 
	
	for i in base_10.keys
		writing = num_left / i			#writing is the current digit being written set on each iteration
		num_left-=writing*i				#reduce remainder left by write amount.

			out<< "#{small_english_number(writing)} #{base_10[i]} " if writing !=0	#If that basis exists append to file 
			
	end
	
	out<<small_english_number(number%1000)		#call small_english_number to deal with element of number < 999
 	flag==true ? (return out.split(" ").unshift("minus").join(" ").strip) : (return out.strip) #deal with minus numbers by prepending 'Minus' and return
end
