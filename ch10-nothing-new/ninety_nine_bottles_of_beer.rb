
def ninety_nine_bottles_of_beer()
	n=99
	97.times do
		puts "#{n} bottles of beer on the wall #{n} bottles of beer"
		puts "pick one up, chug it back, #{n-1} bottles of beer on the wall"
		n = n-1
	end
	puts "#{n} bottles of beer on the wall #{n} bottles of beer"
	puts "pick one up, chug it back, #{n-1} bottle of beer on the wall"
	puts "1 bottle of beer on the wall, just 1 bottle of beer"
	puts "pick it up, chug it back, and try not to throw up!"
end



