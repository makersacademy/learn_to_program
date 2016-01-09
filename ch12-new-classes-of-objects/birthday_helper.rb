bdates = {}

File.read('birthdates.txt').each_line do |line|
  line = line.chomp
  length = line.length
  c_idx = line.index(',')
  bdates[line[0..c_idx-1].downcase] = line[c_idx+2...length]
end

puts "Who's birthday do you want to find?"
name = gets.chomp.downcase

if bdates.has_key?(name)
  puts bdates[name][0..5]
else
  puts "Sorry, that person isn't saved."
end
