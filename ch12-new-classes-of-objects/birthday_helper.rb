birthdays = {}

File.read('names.txt').each_line do |line|
line = line.chomp
info = line.split(", ")
birthdays[info[0]] = info[2]
end

puts "Whose birthday do you want to know?"
name = gets.chomp

birthdays.each do |fname, date|
    if fname == name
        puts date
        exit
    end
end
puts "Oh, I don't know their birthday.. sorry!"