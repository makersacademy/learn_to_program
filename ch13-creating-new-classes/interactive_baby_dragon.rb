puts "Please enter a name for the baby dragon"
name = gets.chomp
pet = Dragon.new name

while true
	puts 'commands: feed, toss, walk, rock, put to bed, exit'
	command = gets.chomp

	puts case command
	when "feed"
		pet.feed
	when 'toss'
		pet.toss
	when "walk"
		pet.walk
	when "rock"
		pet.rock
	when "put to bed"
		pet.put_to_bed
	when "exit"
		exit
	end
end




