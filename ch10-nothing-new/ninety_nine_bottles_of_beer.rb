require './english_number.rb'

def song(int)
	for i in (int).downto(1)
		if i == 1
			puts """
			#{(english_number i).capitalize!} bottle of beer on the wall, #{(english_number i).capitalize!} bottle of beer.
			Take one down and pass it around, no more bottles of beer on the wall.
		"""
			puts
		else
			puts """
			#{(english_number i).capitalize!} bottles of beer on the wall, #{(english_number i).capitalize!} bottles of beer.
			Take one down and pass it around, #{(english_number i-1).capitalize!} bottles of beer on the wall.
			"""
			puts
		end
	end
end

#puts song(999)