class Beersong

	attr_accessor :beer

	def initialize(beer)
		@beer = beer
	end

	def english_number(number)
		if number < 0
			return 'Please enter a positive number'
		end

		if number == 0
			puts 'There are no bottles of beer on the wall!'
			return 'zero'
		end

		num_at_start = 99
		num_now > 2
		
		while num_now > 2

				puts english_number(num_now) + ' bottles of beer on the wall,'
				puts english_number(num_now) + ' bottles of beer!'
				num_now = num_now - 1
				puts 'Take one down, pass it around,' 
				puts english_number(num_now) + ' bottles of beer on the wall!'

		end
	end
end

# answer as provided in RubyKickstarter



