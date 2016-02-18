puts "What's your birthday?"
puts "Year YYYY"
year = gets.chomp
puts "Month MM"
month = gets.chomp
puts "Day DD"
day = gets.chomp

def get_birthdays year, month, day
  birthday = Time.new(year.to_i,month.to_i,day.to_i)
  today = Time.new
  spank = (today.year - birthday.year)
  if birthday.month > today.month
    spank -= 1
  end
  if birthday.month == today.month
    spank -= 1 if birthday.day >today.day
  end
  spank.times{|t| puts "SPANK!#{t}"}
end

get_birthdays year, month, day
