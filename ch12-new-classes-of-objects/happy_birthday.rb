# your code here
def happy_birthday
puts 'what year were you born in?'

year = gets.chomp.to_i

puts 'what month were you born in?'

month = gets.chomp.to_i

puts 'waht day was it?'

day = gets.chomp.to_i

birthday = Time.local(year, month, day)

spanks = ((Time.new - birthday)/60/60/24/365).to_i

puts "SPANK!\n"* spanks
end
# ~> -:5:in `<main>': undefined method `chomp' for nil:NilClass (NoMethodError)
# >> what year were you born in?