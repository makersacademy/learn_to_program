def happy_birthday

  puts "What year where you born in?"
  year = gets.chomp.to_i
  puts "What month where you born in? (NUMBER Please)"
  month = gets.chomp.to_i
  puts "What day where you born in? (NUMBER Please)"
  day = gets.chomp.to_i

  birthday = Time.local(year, day, month)
  now = Time.new

  age = now.year - birthday.year
  if now.month > birthday.month
    age = age - 1
  end

  puts "SPANK!" + \n * 38

end











# your code here
