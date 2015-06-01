
def shuffle stuff
	mix = []
	while stuff.length > 0

		rand_index = rand(stuff.length)

		curr_index = 0
		new_stuff = []

		stuff.each {|item|
			if curr_index == rand_index
				mix.push item
			else
				new_stuff.push item
			end

			curr_index = curr_index + 1
		}

		stuff = new_stuff
	end

	mix
end

puts(shuffle(['hat', 'cat', 'bat', 'mat', 'give', 'hit']))