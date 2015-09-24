puts 'What year was the person born in?'
yearBorn = gets.chomp.to_i
puts 'and what month?'
monthBorn = gets.chomp.to_i
puts 'and day?'
dayBorn = gets.chomp.to_i
ageInSeconds = ( Time.new - Time.mktime(yearBorn,monthBorn,dayBorn) ).to_i
puts 'Age in seconds: ' + ageInSeconds.to_s
ageInYears = ( ageInSeconds / (365.25*24*60*60) ).to_i
puts 'Age in years: ' + ageInYears.to_s
puts 'SPANK! ' * ageInYears# your code here