Dir.chdir '/Users/kevinmccarthy/Documents/'
file = File.open("birthdays.txt", "r")
contents = file.read
bob = Hash.new(0)
contents.split("\n").each { |i|
                          a = i.split(",")
                          bob[a[0]] = a[1] + a[2]}

puts "Whose birthday would you like to know?"
name = gets.chomp
puts "#{name}'s birth date was #{bob[name]}."








