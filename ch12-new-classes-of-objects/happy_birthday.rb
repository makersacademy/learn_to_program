def happy_birthday
  puts "What year were you born?"
  year = gets.chomp.to_i
  puts "What month were you born? i.e. for April, write 4."
  month = gets.chomp.to_i
  puts "What day of the month were you born?"
  day = gets.chomp.to_i


  years_old = (Time.new - Time.gm(year, month, day))/(60*60*24*365)
  puts "SPANK!" * years_old

end
