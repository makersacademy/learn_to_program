def lyrics(bottles)

beer = bottles

	if beer > 0
		puts "#{beer} bottles of beer on the wall, #{beer} bottles of beer."
		beer -= 1
		puts"Take one down and pass it around, #{beer} bottles of beer on the wall."
	end

lyrics(beer)

puts "No more bottles of beer on the wall, no more bottles of beer. 
Go to the store and buy some more, 99 bottles of beer on the wall."

end

puts lyrics(120)