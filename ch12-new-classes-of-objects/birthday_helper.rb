# create a has from File
birthdays = []
input = File.read("birthdays").split("\n\n")
input.each { |b| birthdays.push(b.tr("\n","").split(","))}

birthdayhash = Hash.new

birthdays.each do |a, b, c|
    b[0]=""
    c[0]=""
    birthdayhash["#{a}"] = b + ", " + c
end

#get input
puts 'Whose birthday would you like to know?'
name = gets.chomp

#returns birthday

date = birthdayhash[name]

if date == nil
  puts "Oooh, I don't know that one..."
else
  puts date
end
