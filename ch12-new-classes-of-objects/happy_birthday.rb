=begin 
1. Takes the prameters Time now and time of birth
2. Uses the gets.chomp to get the year, month and day of the persons birthday. 
3. Subtract this from Time.now
3.This will give you the number of seconds. Divide this using the / method to find the amount
of years and then 

=end


puts 'What year were you born?' 

b_year = gets.chomp.to_i # take the answer and turn it into an intiger saving it in a variable.

puts 'What month were you born? (1-12)' 

b_month = gets.chomp.to_i # take answer as a string and turn it into an intiger saving it in a variable.

puts 'What day of the month were you born?'

b_day = gets.chomp.to_i # take answer, convert it into an intiger and save it in a variable. 

b = Time.local(b_year, b_month, b_day) # Place these varaible in the Time.local parimiters) and assign to variable. 

t = Time.new # Save the time now in a variable. 

age = 1 # create a counter 'age' asigning it to the value 1

while Time.local(b_year + age, b_month, b_day) <= t # Start a while loop. Which uses Time.local using the birhtday
	#details in the parameter. 

	puts 'SPANK!' # puts spank after one cycle of the while loop indicating one year has passed. 
	age = age + 1 # Then add 1 to the age counter which is encluded in the Time.local parameter. 
	#The cycle complete when t - the time now, is equal or less to the value of the Time.local which incriments
	# 1 year with each cycle of the while loop.

end




