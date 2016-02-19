def happy_birthday
  puts "what year were you born?"
  answer = gets.chomp.to_i
  puts "what month?"
  answer2 = gets.chomp.to_i
  puts "what day?"
  answer3 = gets.chomp.to_i

  birthy = Time.local(answer, answer2, answer3)
  now = Time.new

  age = 1

  while Time.local(answer + age, answer2, answer3) <= now
    puts "SPANK"
    age = age + 1
  end
end

happy_birthday
