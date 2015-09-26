require 'time'

print "Please give me date and time on which you were born: > "

dob     = Time.parse(gets.chomp)
t       = Time.now
a_year  = 60*60*24*365.25
age     = ((t - dob) / a_year).to_i

puts """
You are #{age} years old. Congratulations.
Let me give you some spanks: "
gets

age.times do 
  puts "\tSPANK!" 
  sleep(0.5)
end 
