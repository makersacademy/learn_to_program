 
puts "How do you want to call your dragon?"
name = gets.chomp
dragon_name = Dragon.new name

while true 
puts "What do you want to do to your dragon? feed? walk? put to bed? toss? rock?"
answer = gets.chomp.downcase

if answer == "feed"
	feed
elsif answer == "walk"
	walk
elsif answer == "put to bed"
	put_to_bed
elsif answer == "toss"
	toss
elsif answer == "rock"
	rock
else
    puts "This is not a valid answer. Please enter feed or walk or put to bed or toss or rock"
end    
end