def ninety_nine bottles

	if bottles == 1
	puts "There is 1 bottle left, take it down, pass it around, now there are no more bottles of beer!
		fin"
	else
		# num bottles and recurse with one less
	puts "There are #{bottles} green bottles, standing on the wall. Take one down, pass it around, now there are #{bottles-1}"
	ninety_nine bottles-1
	end
end

ninety_nine 10