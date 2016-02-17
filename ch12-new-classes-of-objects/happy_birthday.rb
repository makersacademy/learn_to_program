def spanky_birthday
  puts "What year were you born?"
  year = gets.chomp
  puts "What month?"
  month = gets.chomp
  puts "What day?"
  day = gets.chomp

  time = Time.local(year, month, day)
  today = Time.new

  if ((time.month <= today.month) && (time.day <= today.day))
    puts "#{today.year - time.year}!"
    puts "SPANK " * (today.year - time.year)
  else
    puts "#{today.year - time.year - 1}!"
    puts "SPANK " * (today.year - time.year - 1)
  end
end

spanky_birthday
