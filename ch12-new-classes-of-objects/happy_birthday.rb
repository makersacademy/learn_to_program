def age_calculator (year, month, day)
  age = (Time.new - Time.mktime(year, month, day)) /
    (365 * 24 * 60 * 60)
  age.to_i
end

print "year of birth (yyyy): "; year = gets.chomp.to_i

print "month of birth (mm): "; month = gets.chomp.to_i

print "day of birth (dd): "; day = gets.chomp.to_i

age = age_calculator(year, month, day)

print "Your age is #{age}.\n" + "SPANK!\n" * age