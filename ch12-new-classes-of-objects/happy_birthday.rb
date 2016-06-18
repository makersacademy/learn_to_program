puts "What year were you born in?"
birth_year = gets.chomp
puts "What month were you born in?"
birth_month = gets.chomp

time_now = Time.new
birthday = Time.local(birth_year, birth_month)

secs_in_a_year = 60*60*24*365
spanks = ((time_now - birthday)/secs_in_a_year).to_i
puts "You have had #{spanks} birthdays."

spanks.times do |n|
  puts "Spank #{n+1}!"
end
