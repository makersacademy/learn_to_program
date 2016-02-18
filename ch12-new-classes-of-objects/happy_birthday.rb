puts "Please enter your birthday (DD/MM/YYYY)"

# creates an array ["day", "month", "year"]
answer = gets.chomp.split("/")
bday = Time.local(answer[-1], answer[1], answer[0])

# calculates how many years old
years = ((Time.new - bday) / 60 / 60 / 24 / 365).to_i

puts "You are #{years} years old!"
puts "SPANK!\n" * years
