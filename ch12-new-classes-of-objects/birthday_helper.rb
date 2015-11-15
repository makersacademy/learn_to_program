birthday = {}

File.read("bday.txt").each_line do |line|
  name, date, year = line.split(',')
  birthday[name] = Time.gm(year, *(date.split))
end

puts 'Whose birthday would you like to know?'
name = gets.chomp
bday = birthday[name]
