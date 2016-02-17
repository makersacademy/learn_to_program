puts "What year were you born in?"
yr_ansr = gets.chomp
puts "And what month?"
mnth_ansr = gets.chomp
puts "Ok, and now the day?(number)"
dy_ansr = gets.chomp
puts "Lucky you! Here ya go!"
time_now = Time.new
time_then = Time.mktime(yr_ansr.to_i, mnth_ansr.to_i, dy_ansr.to_i)

age_in_seconds = time_now - time_then
birthdays = (age_in_seconds/(60*60*24*365)).to_i

puts "SPANK!\n" * birthdays

puts "Happy Birthday for all the times I missed! :)"