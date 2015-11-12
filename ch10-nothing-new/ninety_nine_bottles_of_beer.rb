
def ninety_nine_bottles_of_beer
	n=99
	99.times do
		puts "#{n} bottles of beer on the wall #{n} bottles of beer"
		puts "pick one up, chug it back, #{n-1} bottles of beer on the wall"
		n = n-1
	end
	puts "1 bottle of beer on the wall, just 1 bottle of beer"
	puts "pick it up, chug it back, and try not to throw up"
end
