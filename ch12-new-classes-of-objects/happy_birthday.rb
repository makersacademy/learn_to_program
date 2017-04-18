def happy_birthday
  puts "I am going to give you a spank for each birthday you've had."
  puts "What year were you born? (e.g. 1984)"
  y = gets.chomp
  puts "You were born in #{y}.  In what month of #{y} were you born? (e.g. 3)"
  m = gets.chomp
  puts "And what day of #{m} #{y}? (e.g. 14)"
  d = gets.chomp
  bday, now = Time.local(y, m, d), Time.new

  year_now = now.year
  month_now = now.month
  day_now = now.day

  age = ((now - bday)/365/24/60/60).to_i

  if month_now = m && day_now == d
    puts "HAPPY BIRTHDAY!"
    age.times {puts "SPANK!"}
  else
    age.times {puts "SPANK!"}
  end
end                                 # => :happy_birthday

happy_birthday

# >> I am going to give you a spank for each birthday you've had
# >> What year were you born? (e.g. 1984)

# ~> NoMethodError
# ~> undefined method `chomp' for nil:NilClass
# ~>
# ~> /Users/alistairwye/Projects/learn_to_program/ch12-new-classes-of-objects/happy_birthday.rb:4:in `happy_birthday'
# ~> /Users/alistairwye/Projects/learn_to_program/ch12-new-classes-of-objects/happy_birthday.rb:25:in `<main>'
