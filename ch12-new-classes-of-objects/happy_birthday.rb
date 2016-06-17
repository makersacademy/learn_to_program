
puts "Tell me when you were born respecting the following format?"
puts "yyyy,mm,dd,hh,mm,ss, when the hh stands for an hour, mm stands for a minute, and ss stands for a second"
yourTime = gets.chomp.to_i
yourTimeWithTime = Time.new - Time.local("#{yourTime}")

time3 = yourTimeWithTime.to_i / 60 / 60 / 24 / 365


p "You have #{time3} years old."

p "Congrats!"


time3.times { puts "SPANK!" }













# your code here