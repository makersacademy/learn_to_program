puts "Please enter your date of birth in the format: YYYY MM DD"
input = gets.chomp.split(" ")
dob = Time.local(input[0].to_i,input[1].to_i,input[2].to_i)
puts "You are #{(Time.new - dob).to_i} seconds old!"