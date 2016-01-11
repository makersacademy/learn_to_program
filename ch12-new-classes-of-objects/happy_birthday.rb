def birthday

puts "Please enter you date of birth like so DD/MM/YYYY"

input = gets.chomp.split('/')
birth_time = Time.local(input[2],input[1],input[0])
a = (Time.now - birth_time)
seconds_in_a_year = 60*60*24*365
b = a/seconds_in_a_year
("SPANK! " * b.to_i).chop
end