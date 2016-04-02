class Dragon

	def initialize name
		@name = name
		@asleep = false
		@stuff_in_belly = 10 # He's full.
		@stuff_in_intestine = 0 # He doesn't need to go.
		puts "#{@name} is born."
	end

	def feed
		puts "You feed #{@name}."
		@stuff_in_belly = 10
	end

	def walk
		puts "You walk #{@name}."
		@stuff_in_intestine = 0
	end
end

dragon = Dragon.new('tinyfin')

while true
	puts "command: "
	cmd = gets.chomp.downcase
	break if cmd == "stop"
	dragon.send(cmd)
end