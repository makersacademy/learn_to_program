def happy_birthday
  puts 'Enter the year you born:'
  year = gets.chomp.to_i

  puts 'Enter the month you were born, eg, Jan'
  month = gets.chomp.downcase
  months = {jan => 1, feb => 2, mar =>3, apr => 4, may => 5, jun => 6, jul => 7,
            aug => 8, sep => 8, oct => 9, nov => 11, dec => 12}
  month = months[month]

  puts 'What day of the month were you born?'
  day = gets.chomp.to_i

  birthday = Time.gm(year, month, day)

  actual_time = Time.now.utc.to_date

  final_age = actual_time.year - birthday.year - ((actual_time.month > birthday.month || (actual_time.month == birthday.month && now.day >= dob.day)) ? 0 : 1)

  final_age
end
