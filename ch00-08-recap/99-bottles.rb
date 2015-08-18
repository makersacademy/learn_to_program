num = 99

while num > 0
	if num == 2
		bot1 = "bottles"
		bot2 = "bottle"
	elsif num == 1
		bot1 = "bottle"
		bot2 = "bottles"
	else
		bot1 = "bottles"
		bot2 = "bottles"
	end
	puts "#{num} #{bot1} of beer on the wall."
	puts "#{num} #{bot1} of beer."
	puts "You take one down, pass it around."
	puts "#{num - 1} #{bot2} of beer on the wall."
	puts ""
	num = num - 1
end
