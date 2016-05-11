# Chris Pine Chapter 12 exercise

# Happy Birthday! Ask what year a person was born in, then the month, then the day. Figure out how old they are and give them a big SPANK! for each birthday they have had.

p "Please enter your birth year"
year = gets.chomp
p "Please enter your birth month"
month = gets.chomp
p "Please enter your birth day"
day = gets.chomp

Birthday = Time.new(year, month, day)

 difference = Time.now - Birthday

 age = (difference / 60 /60  /24 /365).to_i

 n = 0

age.times do
  p "SPANK! #{n += 1}"
end
