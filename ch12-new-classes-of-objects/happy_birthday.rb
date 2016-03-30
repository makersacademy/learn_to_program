# forgot to do the gets.chomp and thought they would just input directly
require 'date'
def age(dob)
  now = Time.now.utc.to_date
  now.year - dob.year - ((now.month > dob.month || (now.month == dob.month && now.day >= dob.day)) ? 0 : 1)
end
puts 'Hey, when were you born? (Please use YYYY, MM, DD format.)'
input = gets.chomp #<= this messes up my code hmm was the ""
dob = Time.gm(input)
x = age(dob)
x.to_i.times{puts 'SPANK!'}





=begin example using to help me
def age(dob)
  now = Time.now.utc.to_date
  now.year - dob.year - ((now.month > dob.month || (now.month == dob.month && now.day >= dob.day)) ? 0 : 1)
end
puts age(Time.gm("1992, 10, 03"))
=end

