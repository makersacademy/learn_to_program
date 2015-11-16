# your code here

class BeerSong

	def initialize (beers)
		if beers > 99
			@beers == 99
		elsif beers < 0 
			@beers == 0
		else
		@beers = beers
		end
	end

	attr_accessor = 'beers'

	def bottle(n)
		if n == 1
			"bottle"
		else
			"bottles"
		end
	end

	def print_song
		while @beers > 0
			puts "#{number(@beers).capitalize} #{bottle(@beers)} of beer on the wall," 
			puts "#{number(@beers).capitalize} #{bottle(@beers)} of beer,"
			@beers -= 1
			puts "Take one down, pass it around,"
			puts "#{number(@beers).capitalize} #{bottle(@beers)} of beer on the wall"
			puts "No more bottles of beer on the wall." if @beers == 0

		end
	end

	def number(beers)
	   ones = ['', 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
	   teens = ['', 'eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']
	   tens = ['', 'ten', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']

	   string = ''

	   if beers > 19
		   tensplace = beers / 10
		   string << tens[tensplace - 1]
		   beers -= tensplace * 10
		   return string if beers % 10 == 0
		   string << '-'
	   elsif (beers < 20 && beers > 9)
	   		teensplace = beers % 10
	     	return string << teens[teensplace+1]
	   end

	   if beers > 0
	     string << ones[beers]
	     string
	   end
	end
end