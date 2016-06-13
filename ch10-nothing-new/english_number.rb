def english_number n

		ones = [	"one", "two", "three", "four", "five",
					"six", "seven", "eight", "nine"]

		tens = [	"Ten", "Twenty", "Thirty", "Fourty", "Fifty", "Sixty",
					"Seventy", "Eighty", "Ninety"]

		teens =[	"Eleven", "Twelve", "Thirteen", "Fourteen", "Fifteen", "Sixteen",
					"Seventeen", "Eighteen", "Nineteen"]

		string = []

		a = n / 100

		if a > 0 #hundreds
			string.push("#{ones[a-1]} hundred")
		end

		b = (n - a * 100) / 10

		if b > 1
			if a >= 1 then string.push " and " end
			string.push("#{tens[b-1]} ")
		end

		c = n - ((a*100) + (b*10))

		if ((c > 0) && (b == 1))
			string.push("#{teens[c-1]}")
		elsif ((c > 0) && (b != 1))
			string.push("#{ones[c-1]}")
		end




		puts string.join.downcase

	end




english_number 347
english_number 256
english_number 444
english_number 12
english_number 100
english_number 200
english_number 999
english_number 10
