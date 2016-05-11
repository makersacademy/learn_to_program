
name = []
month = []
year = []


birth_dates = {}
File.read('birthdates.txt').each_line do |line|
  a, b, c = line.chomp.strip.split(',')
  name << a.strip.downcase
  month << b.strip
  year << c.strip
end

#combine months and years
bday = month.zip(year)

# turn birth dates into a hash
birth_dates = Hash[name.zip(bday)]

# join each value into a single string
birth_dates = birth_dates.each do |key, value|
  birth_dates[key] = value.join(' ')
end

#ask the user for a name
puts "enter a name to check when the persons next birtday is!"
person = gets.chomp.downcase.capitalize
person = person.downcase

p birth_dates

#check if name exists within the hash
if birth_dates.has_key? person
  p "great, looking up when the next birthday is now...."
  p birth_dates[person]
else
  p "sorry, there is no person by that name in our database"
  return p "please try with another name. this program will now end"
end


