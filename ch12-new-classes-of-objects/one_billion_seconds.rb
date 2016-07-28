def one_billion_seconds(year, month, day, hour, minute, second)
  birth = Time.new(year, month, day, hour, minute, second)
  birth + (10**9)
end

#ask for year of birth
print "Add your year of birth: "; year = gets.chomp.to_i
#ask for month of birth
print "Add your month of birth (nums only): "; month = gets.chomp.to_i
#ask for day of birth
print "Add your day of birth: "; day = gets.chomp.to_i
#ask for the exact hour of birth
print "Add your hour of birth: "; hour = gets.chomp.to_i
#ask for the exact minute of birth
print "Add your minute of birth: "; minute = gets.chomp.to_i
#ask for the exact second of birth
print "Add your second of birth: "; second = gets.chomp.to_i

obs_bday = one_billion_seconds(year, month, day, hour, minute, second)
print "You #{obs_bday > Time.new ? "will be" : "were"} one billion " +
"seconds old on #{obs_bday}"
