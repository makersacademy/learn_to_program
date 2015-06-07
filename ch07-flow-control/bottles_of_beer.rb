n = 9
while n != 0
	puts "#{n.to_s} bottles of beer on the wall"
	puts "#{n.to_s} bottles of beer"
	puts "If the wind blows and one falls off"
	puts "There\'s only #{(n - 1).to_s} bottles of beer on the wall." 
	n = n -1 
end
