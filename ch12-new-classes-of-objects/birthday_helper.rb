require 'yaml'

def yaml_save object, filename
  File.open filename, 'w' do |f|
    f.write(object.to_yaml)
  end
end

def yaml_load filename
  yaml_string = File.read filename
  YAML::load yaml_string
end

Dir.chdir '/home/ps/Projects/ruby-practice'

filename = 'birthdate.txt'
read_text = yaml_load filename

birth_dates = {}
read_text.each_line do |line|
  name, date, year = line.split(',')
  month_day = date.split
  birth_dates[name] = Time.gm(year,month_day[0],month_day[1].to_i)
end

puts "Please enter a name"
new_name = gets.chomp

if birth_dates.include?(new_name)
  puts "Your birth date is #{birth_dates[new_name]}"
  now = Time.new
  years = 1+ ((now - birth_dates[new_name])/(60*60*24*365)).to_i
  puts "You are #{years.to_s} years old and your next birthday will be: #{(birth_dates[new_name] + years*60*60*24*365).to_s}"
else
  puts "I don't have that person in my database. Please try again"
end
