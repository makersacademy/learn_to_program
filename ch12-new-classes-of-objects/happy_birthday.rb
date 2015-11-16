def happy_birthday
  puts 'Enter the year you born:'
  year = gets.chomp.to_i

  puts "Enter the month you were born, eg, Jan"
  month = gets.chomp.downcase
  puts "What day of the #{month.capitalize} were you born:"
  day = gets.chomp.to_i

  months = {'jan' => 1, 'feb' => 2, 'mar' =>3, 'apr' => 4, 'may' => 5, 'jun' => 6, 'jul' => 7,
            'aug' => 8, 'sep' => 8, 'oct' => 9, 'nov' => 11, 'dec' => 12}
  month = months[month].to_i


  actual_time = Time.now.utc
  birthday = Time.utc(year, month, day)


  final_age = actual_time.year - birthday.year - ((actual_time.month > birthday.month || (actual_time.month == birthday.month && now.day >= dob.day)) ? 0 : 1)

  final_age.times {puts "SPANK!"}
end


happy_birthday
