def age_calculator (year, month, day)
  age = (Time.new - Time.mktime(year, month, day)) /
    (365 * 24 * 60 * 60)
  age.to_i #return age as integer
end

#ask for year of birth
print "Add your year of birth: "; year = gets.chomp.to_i
#ask for month of birth
print "Add your month of birth (nums only): "; month = gets.chomp.to_i
#ask for day of birth
print "Add your day of birth: "; day = gets.chomp.to_i
age = age_calculator(year, month, day) #calculate age by using the defined method
print "Your age is #{age}.\n" + "SPANK!\n" * age
