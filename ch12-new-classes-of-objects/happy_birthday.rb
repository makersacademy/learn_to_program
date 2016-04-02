def happy_birthday
  puts "What year were you born in? (ie 1970)"
  year = gets.chomp
  puts "What month were you born in? (ie 11)"
  month = gets.chomp
  puts "what day were you born on? (ie 26)"
  day = gets.chomp

  birthday = Time.local(year,month,day)
  puts "Your birthday is #{birthday.strftime("%d-%m-%Y")}"
  age = Time.now - birthday
  age = age/31622400
  puts "You are #{age.to_i} years old"
  age.to_i.times do
    puts "SPANK!"
  end
end

happy_birthday
