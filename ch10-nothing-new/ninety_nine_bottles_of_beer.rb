require './english_number.rb'

def word n
	word = english_number(n).capitalize 
	word = "No more" if word == "Zero"
	word + " bottle" + (n==1 ? "" : "s") + " of beer"
end

while n > 0
	puts word(n) +" on the wall"
	puts word(n)
	puts "Take one down and pass it around"
	puts word(n-=1) +" on the wall"
	puts 
end
