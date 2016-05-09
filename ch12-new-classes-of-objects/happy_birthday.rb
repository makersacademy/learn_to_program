
while true
  puts "What year were you born (in digit format)?"
  year = gets.chomp.to_i
  puts "And the month (in digit format)?"
  month = gets.chomp.to_i
  puts "And the day (in digit format)?"
  day = gets.chomp.to_i

  begin
  (((Time.now - Time.mktime(year,month,day)) / 60 / 60 / 24 / 365).floor).times {puts "SPANK!"}
    exit
  rescue
    puts "You need to insert a digit for each question! Try again!"
  end
end
