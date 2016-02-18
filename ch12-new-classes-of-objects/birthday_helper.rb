# This programme reads in a text file containing information
# of people's name and their birthday. Then asks you for a person's
# name as an input and outputs her/his birthday and age

# 1. create a string with bday info of my family
bday_list = "Misa Ogura, Dec 19, 1988\nMiho Ogura, Apr 27, 1993\nClemence Guillaume, Feb 18, 1990\nAkemi Ogura, Jul 21, 1952\nMasashi Ogura, Jun 18, 1952"

#  2. creates a hash with key = name & value = bday
bday_hash = {}
bday_list.each_line do |line|
  bday_array = line.delete("\n").split(", ")
  bday_hash[bday_array[0]] = bday_array[1] + ", " + bday_array[-1]
end
bday_hash

# 3. asks for user input of name and get birthday from the hash
puts "This programme tells you a person's birthday and age."
puts "Enter the first nanme:"
first_name = gets.chomp.downcase.capitalize
puts "Enter the last name:"
last_name = gets.chomp.downcase.capitalize
name = first_name + " " + last_name

puts "I'm sorry, #{name} is not on our list." unless bday_hash.keys.include?(name)

bday = bday_hash[name]

# 4. hash to convert months to number
months_to_num = {"Jan"=>1, "Feb"=>2, "Mar"=>3, "Apr"=>4, "May"=>5, "Jun"=>6, "Jul"=>7, "Aug"=>8, "Sept"=>9, "Oct"=>10, "Nov"=>11, "Dec"=>12}

# 5.sorts bday into an array in the format of ["Month", "Day", "Year"]
bday_array = bday.delete(",").split
year = bday_array[-1]
month = months_to_num[bday_array[0]]
day = bday_array[1]

# 6. calculates the age
age = ((Time.new - Time.local(year, month, day)) / 60 / 60 / 24 / 365).to_i

puts "#{name}'s birthday is #{bday} and is #{age} years old."
