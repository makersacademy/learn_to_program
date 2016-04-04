def happy_birthday
  puts "What is your birthday year?"
  y = gets.chomp

  puts "What is your birthday month?"
  m = gets.chomp

  puts "What is your birthday day?"
  d = gets.chomp

  bday = Time.local(y, m, d)

  times = (Time.now - bday).to_i / (365 * 24 * 60 * 60)

  puts "SPANK\n" * times

end