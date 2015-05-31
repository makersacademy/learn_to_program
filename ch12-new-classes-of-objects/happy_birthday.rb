puts "When were you born. Enter in the form dd/mm/yy"
input = gets.chomp
split = input.split("/")
birthday = Time.new(split[-1],split[-2],split[-3])
today = Time.new
age = today - birthday
age = (age / (3600*24*365)).to_i
puts age
age.times do 
  puts "SPANK!"
end
