puts "Tell me the year you were born"             
year = gets.chomp 
puts "month"
month = gets.chomp
puts "day"
day = gets.chomp

birthday = Time.gm(year, month, day, 0, 0, 0)  
now = Time.now 

age_in_seconds = now - birthday
seconds_in_year = 60*60*24*365

age = age_in_seconds / seconds_in_year

age.floor.times do #need to floor it so it knows that 7.9 year olds are still 7
  puts "SPANK!"
end


