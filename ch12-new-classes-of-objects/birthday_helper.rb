#read in names and birth dates from file
read_string = File.read 'dob'

#split by newline to obtain seperate people -> though could have actually also just used each_line on the read_string maybe
list = read_string.split("\n")

hash_list = Hash.new

#convert to hashes
list.each do |person|
    data = person.split(',',2) #returns array of 2 strings, split by first occurence of ,
    hash_list[data[0]] = data[1].lstrip!
end

#Time for user interaction:
puts "Name please"
name = gets.chomp

if hash_list[name] == nil
    puts "sorry, not got them on me list"
    exit
end

birthday_month, birthday_day = hash_list[name].split(',')[0].split
birthday_year = hash_list[name].split(',')[1]

year = '2016'
year = '2017' if Time.new > Time.gm(year, birthday_month, birthday_day)

age = (Time.gm(year, birthday_month, birthday_day) - Time.gm(birthday_year, birthday_month, birthday_day)) / (60*60*24*365)

puts "#{name}'s next birthday is #{birthday_day} #{birthday_month} #{year}. He will be #{age.round} years old."
