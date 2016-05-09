require './english_number'


def print_song beerBottles
	btl = ''
	if beerBottles
		while beerBottles > 0  do
			num = english_number(beerBottles).capitalize
			beerBottles -= 1
			nextNum = english_number(beerBottles).capitalize
			btl, nextBtl = num == 'One' ? 'bottle' : 'bottles', nextNum == 'One' ? 'bottle' : 'bottles'
			puts "#{num} #{btl} of beer on the wall,"
			puts "#{num} #{btl} of beer,"
			puts "Take one down, pass it around,"
			puts "#{nextNum} #{nextBtl} of beer on the wall." if beerBottles != 0
		end
		puts "Zero bottles of beer on the wall." if beerBottles == 0
	end
end


puts print_song(9999)