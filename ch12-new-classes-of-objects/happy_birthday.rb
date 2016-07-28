puts "What year were you born in?"
birth_year = gets.chomp.to_i
puts "What numer month were you born in? (e.x. 1st of April = 4 or 04)"
birth_month = gets.chomp.to_i
puts "What day were you born on (e.x. 1st of April = '1' or '01')"
birth_day = gets.chomp.to_i

birthday = Time.new(birth_year, birth_month, birth_day)

puts birthday.strftime("You were born on %d/%m/%y")

def age(dob)
    now = Time.now.utc
    now.year - dob.year - ((now.month > dob.month || (now.month == dob.month && now.day >= dob.day)) ? 0 : 1)
end

puts "that means that you are " + age(birthday).to_s + " years old."

puts "Here are #{age(birthday)} spanks:"

age(birthday).times do |x|
  puts "SPANK!"
end
