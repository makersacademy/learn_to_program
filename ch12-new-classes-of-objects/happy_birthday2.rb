puts "When were you born in YYYYMMDD format?"
birth_day = gets.chomp

birth_year = birth_day[0..3].to_i
birth_month = birth_day[4..5].to_i
birth_day = birth_day[6..7].to_i

time_now = Time.new

age = time_now.year - birth_year

if (birth_month > time_now.month) || ((birth_month == time_now.month) && (birth_day > time_now.day))
age -= 1
end

puts age
age > 0? age.times {puts "SPANK!"} : "-"
