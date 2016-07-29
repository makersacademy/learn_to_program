hash = {}

File.open 'names_dates.txt', 'r' do |f|
  f.each_line do |line|
    name, dob = line.chomp.split(",")
    hash[name] = dob
  end
end

puts "What name would you like"
input_name = gets.chomp

puts hash[input_name]
