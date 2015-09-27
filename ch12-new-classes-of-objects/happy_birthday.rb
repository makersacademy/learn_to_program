def calcAge(yearBorn,monthBorn,dayBorn)
  yourAge = (((Time.new - Time.new(yearBorn,monthBorn,dayBorn)).to_i)/(60*60*24*365.25)).to_i
end

def giveSpanks(yourAge)
  yourAge.times do |k|
    puts "******SPANK********"
  end
end





puts "I know it's rube but I am going to tll you how old you are."
puts 'What year were you born it?'
yearBorn = gets.chomp
puts 'Now tell me the month as a number e.g. March would be 3'
monthBorn = gets.chomp
puts 'OK, now the day of the month as a number.'
dayBorn = gets.chomp
yourAge = calcAge(yearBorn,monthBorn,dayBorn)
giveSpanks(yourAge)
puts "You are #{yourAge} years old."


 # calcAge(1963,3,6)