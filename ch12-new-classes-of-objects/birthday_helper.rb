filename  = 'Birthdays.txt'
birthdays = {}

File.read(filename).each_line do |line|
    birthdays[line.split(",")[0].gsub(/\A\p{Space}*/, '')] = (line.split(",")[1].gsub(/\A\p{Space}*/, '') + line.split(",")[2].chomp) 
end


birthdays.each do |name, date|
 puts " #{name}  #{date}"
end

puts " give us a name?"
entry = gets.chomp

if birthdays[entry]
  birthday = birthdays[entry]
  month    = birthday.split(" ")[0]
  day      = birthday.split(" ")[1]
  year     = birthday.split(" ")[2]

  nextage = ((Time.now - Time.local(year, month, day)) / 3153600 / 10 + 1).to_i.to_s

  puts "Their birth date is on the #{day} of #{month} and they will be  #{nextage} "

else
  puts "name not in my list"
end

