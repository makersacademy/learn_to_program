# your code here
puts " Tell me your date of birth in the format DD/MM/YYYY"
date_birth = gets.chomp.split("/")

puts " Tell me your hour and minute of birth (just put 0:00 if you don't know)"
time_birth = gets.chomp.split(":")
birthday = Time.local(date_birth[2], date_birth[1], date_birth[0], time_birth[0], time_birth[1])
billion_day = birthday + 10**9

if Time.now < billion_day
  mode_verbe = "will be on"
elsif Time.now > billion_day
  mode_verbe = "was on"
else
  mode_verbe = "no way, Your billion second is just now! Serendipity!!"
end

puts "your billion second of existance #{mode_verbe} #{billion_day}"