now = Time.new
yourBirthday = Time.local(1989, 07, 03, 8, 31)

billionSecondsOld = Time.at(yourBirthday.to_i + 1000000000)

puts billionSecondsOld
