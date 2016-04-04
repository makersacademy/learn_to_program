	def translate bottles
		@bottles = bottles

		@bottles = 0 if @bottles < 0
		@bottles = 99 if @bottles > 99

		word_bank = {0=>"zero", 1=>"One", 2=>"Two", 3=>"Three",4=>"Four", 5=>"Five",6=>"six", 7=>"seven", 8=>"Eight", 9=>"Nine",10=>"Ten",11=>"Eleven",12=>"Twelve", 13=>"Thirteen",14=>"Fourteen",15=>"Fifteen", 16=>"Sixteen", 17=>"Seventeen", 18=>"Eighteen", 19=>"Nineteen", 20=>"Twenty", 30=>"Thirty", 40=>"Fourty", 50=>"Fifty", 60=>"Sixty", 70=>"Seventy", 80=>"Eighty", 90=>"Ninty"}
		
		#Check for tens
		bottles_left = ""
		check = bottles / 10
		left = bottles % 10
		p check
		if check > 0
			if check == 1 && left > 0
				bottles_left << word_bank[(check*10 + left)]
				left = 0
			else
				bottles_left << word_bank[(check*10)]
			end
		end
		
		check = left
		bottles_left
		#Check for ones
		if check == 0
			p bottles_left
		else
		if check >= 10 then bottles_left << word_bank[check] else bottles_left << ("-" + word_bank[check]) end
		bottles_left.downcase.capitalize
		end
		bottles_left.downcase.capitalize
	end

	def p_song
		@bottles.downto 1 do |i|
			p_stanza i
		end
	end

	def p_stanza(number)
		grammer = if number == 1 then "bottle" else "bottles" end
		if number.zero?
			String.new
		else
			p "#{translate(number)} #{grammer} of beer on the wall,"	,
			  "#{translate(number)} #{grammer} of beer,"				,
			  "Take one down, pass it around,"							,
			  "#{translate(number - 1)} #{grammer} of beer on the wall."
		end
	end

