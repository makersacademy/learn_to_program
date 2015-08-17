require_relative 'english_number'

def song (number)

	if number == 1
		return puts """#{english_number(number).capitalize} bottle of beer on the wall, #{english_number(number)} bottle of beer.
Take one down and pass it around, no more bottles of beer on the wall.
		"""
	
	elsif number ==2
		puts """#{english_number(number).capitalize} bottles of beer on the wall, #{english_number(number)} bottles of beer.
Take one down and pass it around, one bottle of beer on the wall.
		"""

	else 
		puts """#{english_number(number).capitalize} bottles of beer on the wall, #{english_number(number)} bottles of beer.
Take one down and pass it around, #{english_number(number-1)} bottles of beer on the wall.
		"""
	end
	song(number-1)
	
end
