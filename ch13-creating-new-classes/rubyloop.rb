apples = 5
puts "there are #{apples}"
puts "how many apples do you want?"
eat =gets.chomp.to_i

if eat > apples
			puts "ooops"
			
		else
			apples = apples - eat

		end
		puts apples