def happy_birthday
  puts "What year were you born?"
  year = gets.chomp.to_i
  puts "What month were you born?"
  month = gets.chomp.to_i
  puts "What day were you born?"
  day = gets.chomp.to_i

  birthday = Time.local(year, month, day)
  current_time = Time.new

  age = 0

  while Time.local(year + age, month, day) <= current_time
    puts 'SPANK!'
    age = age + 1
  end

  puts "You are #{age-1} years old"
end
