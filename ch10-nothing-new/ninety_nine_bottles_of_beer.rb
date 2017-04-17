
class BeerSong
  
  # attr_accessor 'bottles'
  def initialize(bottles)
      @bottles = bottles
      @bottles = 0 if @bottles < 0
      @bottles = 9999 if @bottles > 9999
  end
  
  def print_song
    @bottles.downto(1) do |i|
      song_lines(i)
    end
  end

  def song_lines(num)
    if num.zero?
      String.new
    else
      puts "#{english_number(num)} #{plural? num} of beer on the wall,",
           "#{english_number(num)} #{plural? num} of beer,",
           "Take one down, pass it around,",
           "#{english_number(num-1)} #{plural? num-1} of beer on the wall."
    end
  end

  def plural?(num)
    num == 1 ? "bottle" : "bottles"
  end

	def english_number(number)
		if number < 0
			return 'Please enter a number that isn\'t negative.'
		end
		if number == 0
			return 'zero'
		end

		num_string = ''

		ones_place = ['one', 'two', 'three', 'four',
					  'five', 'six', 'seven', 'eight',
					  'nine']
		tens_place = ['ten', 'twenty', 'thirty', 'forty',
					  'fifty', 'sixty', 'seventy', 'eighty',
					  'ninety']
		teenagers = ['eleven', 'twelve', 'thirteen', 'fourteen',
					 'fifteen', 'sixteen', 'seventeen', 'eighteen',
					 'nineteen']
		larger_numbers = [[100, "hundred"],
						  [1_000, "thousand"],
						  [1_000_000, "million"],
						  [1_000_000_000, "billion"],
						  [1_000_000_000_000, "trillion"],
				  		  [1_000_000_000_000_000, "quadrillion"],
						  [1_000_000_000_000_000_000, "quintillion"],
					  	  [1_000_000_000_000_000_000_000, "sextillion"],
						  [1_000_000_000_000_000_000_000_000, "septillion"],
						  [1_000_000_000_000_000_000_000_000_000, "octillion"],
						  [1_000_000_000_000_000_000_000_000_000_000, "nonillion"],
					  	  [1_000_000_000_000_000_000_000_000_000_000_000, "decillion"],
						  [1_000_000_000_000_000_000_000_000_000_000_000_000, "undecillion"],
						  [1_000_000_000_000_000_000_000_000_000_000_000_000_000, "duodecillion"],
						  [1_000_000_000_000_000_000_000_000_000_000_000_000_000_000, "tredecillion"],
						  [1_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000, "quattuordecillion"],
						  [1_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000, "quindecillion"]]

		remainder = number
		while larger_numbers.length > 0
			pair = larger_numbers.pop
			name = pair[1]
			write = remainder/pair[0]
			remainder = remainder - write * pair[0]

			if write > 0
				num_string = num_string + english_number(write) + ' ' + pair[1]
				if remainder > 0
					num_string = num_string + ' '
				end
			end
		end

		write = remainder/10
		remainder = remainder - write*10

		if write > 0
			if ((write == 1) and (remainder > 0))
				num_string = num_string + teenagers[remainder-1]
				remainder = 0
			else
				num_string = num_string + tens_place[write-1]
			end

			if remainder > 0
				num_string = num_string + '-'
			end
		end

		write = remainder
		remainder = 0

		if write > 0
			num_string = num_string + ones_place[write-1]
		end

		num_string
	end
end
