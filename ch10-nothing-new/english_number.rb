def english_number(number)
	  
	englishNumber = []

		hashTens = {
		  "20" => "twenty", "30" => "thirty", "40" => "forty", "50" => "fifty", "60" => "sixty", "70" => "seventy", "80" => "eighty", "90" => "ninety"
		}
		hashUnderTen = {
		  "1" => "one", "2" => "two", "3" => "three", "4" => "four", "5" => "five", "6" => "six", "7" => "seven", "8" => "eight","9" => "nine"
		}
		hashUnderTwenty = {
		  "10" => "ten", "11" => "eleven", "12" => "twelve", "13" => "thirteen", "14" => "fourteen", "15" => "fifteen", "16" => "sixteen", "17" => "seventeen", "18" => "eighteen", "19" => "nineteen"
		}
		zillions = [
			  ['googol', 100],
			  ['vigintillion', 63],
			  ['novemdecillion', 60],
              ['octodecillion', 57],
              ['septendecillion', 54],
              ['sexdecillion', 51],
              ['quindecillion', 48],
              ['quattuordecillion', 45],
              ['tredecillion', 42],
              ['duodecillion', 39],
              ['undecillion', 36],
		      ['decillion', 33],
              ['nonillion', 30],
              ['octillion', 27],
              ['septillion', 24],
              ['sextillion', 21],
              ['quintillion', 18],
              ['quadrillion', 15],
              ['trillion', 12],
              ['billion', 9],
              ['million', 6],
              ['thousand', 3],
              ['hundred', 2],
          ]

		  if number == 0 
		    englishNumber << 'zero'
		    return englishNumber.join
		  end

		  if number >= 100
		  	zillions.each { |zillion|
		  		zillion_name = zillion[0]
		  		num_of_zeros = zillion[1]
		  		powered_up = 10 ** num_of_zeros
		  		x = number / powered_up
		  		if x > 0
		  			englishNumber << english_number(x)
		  			englishNumber << zillion_name
		  			number = number - (x * powered_up)
		  		end
		  	}

		  end

		  if number >= 20 && number < 100
		    splitDigits = number.to_s.split(//)
		    tenDigit = ((splitDigits[0].to_i) * 10).to_s  
		    singleDigit = (splitDigits[1].to_i).to_s
		      if singleDigit != '0' then
		        englishNumber <<  hashTens[tenDigit] + '-' + hashUnderTen[singleDigit]
		      else englishNumber <<  hashTens[tenDigit] 
		      end
		  end

		  if number >= 10 && number <= 19
		    localnumber = number.to_s
		    englishNumber << hashUnderTwenty[localnumber]
		  end

		  if number < 10 && number != 0
		    localnumber = number.to_s
		    englishNumber <<  hashUnderTen[localnumber]
		  end
	  
	return englishNumber.join(' ')

	end