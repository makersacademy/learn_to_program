$translate = {90 => "ninety", 80 => "eighty", 70 => "seventy", 60 => "sixty", 50 => "fifty", 40 => "forty", 30 => "thirty", 20 => "twenty", 19=>"nineteen", 18=>"eighteen", 17=>"seventeen", 16=>"sixteen", 15=>"fifteen", 14=>"fourteen", 13=>"thirteen", 12=>"twelve", 11 => "eleven", 10 => "ten", 9 => "nine", 8 => "eight", 7 => "seven", 6 => "six", 5 => "five", 4 => "four", 3 => "three", 2 => "two", 1 => "one", 0 => ""}


class BeerSong
	attr_accessor :bottles
	
	def initialize bottles
	@bottles = bottles
	if @bottles < 0
	@bottles = 0
	elsif @bottles > 99
	@bottles = 99
	end
	end
	
	def count
	@bottles -= 1
	end
end

$song = BeerSong.new(45)

def print_song
	while $song.bottles > 0
	puts "#{translator($song.bottles)} bottle#{'s' if $song.bottles > 1} of beer on the wall,"
	puts "#{translator($song.bottles)} bottle#{'s' if $song.bottles > 1} of beer,"
	puts "Take one down, pass it around,"
	$song.count
	puts "#{translator($song.bottles)} bottle#{'s' if $song.bottles != 1} of beer on the wall."
	puts ""
	print_song
	end
end

def translator drink
	if drink < 20 && drink > 0
	str = $translate[drink]
	str.capitalize
	elsif drink != 0
	ones = drink%10
	tens = drink - ones
	hyphen = ""
	hyphen = "-" if drink%10 != 0
	str = $translate[tens] + hyphen + $translate[ones]
	str.capitalize
	else
	"Zero"
	end
	
end

print_song