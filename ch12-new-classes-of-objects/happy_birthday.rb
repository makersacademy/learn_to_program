def happy_bday

  puts "Input year of birth: (e.g. 1984)"
  year = gets.chomp.to_i

  puts "Input month of birth: (e.g. 7 for July)"
  month = gets.chomp.to_i

  puts "Input day of birth:"
  day = gets.chomp.to_i

  timenow = Time.now
  timebday = Time.local(year, month, day)

  age = timenow.year - timebday.year
  age -= 1 if Time.local(year+age, month, day) > timenow

  age.times { puts "SPANK!" }
  age

end

puts happy_bday
