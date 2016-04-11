puts 'Which year were you born in?'
birth_year = gets.chomp.to_i
this_year = Time.new.year 
puts "Your age is #{this_year - birth_year}!"


while birth_year < this_year  do
   puts("SPANK!")
   birth_year +=1
end