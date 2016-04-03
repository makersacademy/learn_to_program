# Two ways of doing it below

no_beers = 99

while no_beers > 0 
	unless no_beers < 2 
		puts "#{no_beers} beers sitting on a wall."
	else 
		puts "1 beer sitting on a wall."
	end
	no_beers -= 1
	if no_beers > 1
		puts "Take one down and pass it around, #{no_beers} bottles of beer on the wall."
	elsif no_beers == 1
		puts "Take one down and pass it around, 1 bottle of beer on the wall."
			elsif no_beers == 0 
		puts "Take one down and pass it around, no more bottles of beer on the wall.
No more bottles of beer on the wall, no more bottles of beer.
Go to the store and buy some more, 99 bottles of beer on the wall."
	end
end

# no_beers = 99

# def sing_verse(no_beers)
# 	if no_beers > 1
# 		puts "#{no_beers} beers sitting on a wall."
# 		puts "Take one down and pass it around, #{no_beers - 1} beers sitting on a wall."
# 	elsif no_beers == 1
# 		puts "1 beer sitting on a wall"
# 		puts "Take one down and pass it around, no beers sitting on a wall."
# 	elsif no_beers == 0
# 		puts "no beer :("
# 	end
# end

# while no_beers >= 0
# 	sing_verse(no_beers)
# 	no_beers -= 1
# end




# No more bottles of beer on the wall, no more bottles of beer. 
# Go to the store and buy some more, 99 bottles of beer on the wall.

# “Ninety-nine Bottles of Beer on the Wall.” Using english_number and your old
# program on page 49, write out the lyrics to this song the right way this
# time. Punish your computer: have it start at 9999. (Don’t pick a number
# too large, though, because writing all of that to the screen takes your
# computer quite a while. A hundred thousand bottles of beer takes some
# time; and if you pick a million, you’ll be punishing yourself as well!)