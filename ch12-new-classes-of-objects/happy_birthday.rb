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








#Code below written when I was trying a different route. 

# this_year=Time.new
# birthday_this_year=Time.local(this_year.year, birth_mon, birth_dt)
# puts "Birthday this year: "+birthday_this_year.to_s

# has_birthday_happened=Time.new-birthday_this_year
#   if val > 0
#       return true
#   else
#       return false
#   end
# end

# puts "Has birthday happened?: "+has_birthday_happened.to_s


# #whole_years=Time.new()

# this_year=Time.new
# puts "this year below:"
# puts this_year.year


# birthdays=Time.now-user_birthday
# birthdays_int=birthdays.to_i

# seconds_in_year=(Time.local(1981)-Time.local(1980)).to_i
# puts "Seconds in a year: "+seconds_in_year.to_s
# puts "Birthdays: "+birthdays.to_s