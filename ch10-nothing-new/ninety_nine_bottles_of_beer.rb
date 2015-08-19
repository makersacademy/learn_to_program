bottles = 99

while bottles >= 0
	while bottles > 2
		puts "#{bottles} bottles of beer on the wall, #{bottles} bottles of beer, take one down, pass it around, #{bottles - 1} bottles of beer on the wall."

		bottles = bottles - 1
	end

	if bottles == 2
		puts "#{bottles} bottles of beer on the wall, #{bottles} bottles of beer, take one down, pass it around, #{bottles - 1} more bottle of beer on the wall."

		bottles = bottles - 1
	end

	if bottles == 1
		puts "One more bottle of beer on the wall, One more bottle of beer, take it down, pass it around, no more bottles of beer on the wall."

		bottles = bottles - 1
	end

	if bottles == 0
		puts "No more bottles of beer on the wall, no more bottles of beer, go to the store and buy some more, 99 bottles of beer on the wall!"

		bottles = 99
	end
end