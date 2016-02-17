def happy_birthday
  #various year definition in seconds
  sidereal_year = 31558149.504
  julian_year = 31557600
  draconic_year = 29947974.5562912
  anomalistic_year = 31558432.5504
  
  birthday = Array.new
  puts "Hi, please enter the year you've been born in. This is a very rough program so no error checking or escape char, sorry"
  birthday << gets.chomp.to_i
  puts "Now enter the month"
  birthday << gets.chomp.to_i
  puts "And finally, the day"
  birthday << gets.chomp.to_i
  
  age_in_seconds = Time.now - Time.new(*birthday)
  age_in_years = Time.now.month > birthday[1] || ( Time.now.month == birthday[1] && Time.now.day >= birthday[2] ) ? Time.now.year - birthday[0] : Time.now.year - birthday[0] - 1
  
  puts "You're #{age_in_seconds.to_i} seconds old, which means:
  #{(age_in_seconds/sidereal_year).round(3)} sidereal years old
  #{(age_in_seconds/julian_year).round(3)} julian years old
  #{(age_in_seconds/draconic_year).round(3)} draconic years old
  #{(age_in_seconds/anomalistic_year).round(3)} anomalistic years old"
  
  puts "Or, a boring #{age_in_years} 'normal' years old"
  puts "\n\nright, almost forgot!"
  puts "SPANK! "  * age_in_years
  
end