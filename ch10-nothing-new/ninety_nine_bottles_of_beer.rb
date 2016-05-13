require './english_number.rb' # require the file that converts numbers to english

def ninty_nine(beer)
	 
	current_beers = beer

	while current_beers > 0

		if current_beers == 1 # to make sure the string is singular or plural
			singular = ' bottle'
		else
			singular = ' bottles'
		end

		puts english_number(current_beers).capitalize + singular + ' of beer on the wall,'
		puts english_number(current_beers) + singular + ' of beer!'
		puts 'Take one down, pass it around,'
		current_beers -= 1
		puts english_number(current_beers).capitalize + singular + ' of beer on the wall.'
	end
end