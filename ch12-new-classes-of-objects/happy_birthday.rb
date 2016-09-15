 puts "What is your birth year? (YYYY)"
 birth_yr=gets.chomp.to_i
 puts "What is your birth month? (MM)"
 birth_mon=gets.chomp.to_i
 puts "What is your birth date? (DD)"
 birth_dt=gets.chomp.to_i
 
 user_birthday=Time.local(birth_yr, birth_mon, birth_dt)
 puts "You were born on: "+user_birthday.to_s
 
 years_since_birth = Time.new.year-user_birthday.year
 
 birthday_passed=(Time.local(Time.new.year, birth_mon, birth_dt))-(Time.new)
 
 if birthday_passed > 0
   years_since_birth=years_since_birth-1
 end
 
 print "SPANK! "*years_since_birth
 puts "You just got spanked "+years_since_birth.to_s+" times.
 