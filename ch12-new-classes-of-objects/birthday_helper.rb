require 'date'
def birthday_helper

Dir.chdir '/Users/amynicholson/desktop'

birthdays = {}

File.read('birthdays.txt').each_line do |line|
  line.chomp!
  birthdays[line.split(",")[0]] = line.split(",")[1] + line.split(",")[2]
end

puts "What is your name?"
name = gets.chomp
date_of_birth = birthdays[name]
year = date_of_birth[-4..-1]
month_name = date_of_birth[-8..-10]
month = Date::ABBR_MONTHNAMES.index(month_name)
day = date_of_birth[-6]

years_old = (Time.new - Time.gm(year, month, day))/(60*60*24*365)

"#{name}'s birthday is on #{birthdays[name]}, they will be #{years_old.to_i} years old."

end
