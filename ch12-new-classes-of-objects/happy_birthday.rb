def happy_birthday

puts "What year were you born in?"
year= gets.chomp.to_i
puts "What month were you born in?"
month = gets.chomp.to_i
puts "What day you were born in?"
day= hets.chomp.to_i
birthday = Time.local(year,month,day)
age = age/60/60/24/7/52
age = Time.new - birthday # age in secs
   puts  "SPANK!\n" * age

end  

birthday 