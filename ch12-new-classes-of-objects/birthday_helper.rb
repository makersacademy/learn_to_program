require 'yaml'
require 'date'

def yaml_load(filename)
  yaml_string = File.read filename
  YAML::load yaml_string
end

filename = "file.txt"

birth_dates = yaml_load(filename)

puts "Put in a name?"
answer = gets.chomp
date_with_comma = birth_dates.fetch(answer).split(" ")
date = birth_dates.fetch(answer).gsub(/,/, '').split(" ")

if Date.parse(date[0..1].join("-")) < DateTime.now
  date_with_comma[2] = "2017"
else
  date_with_comma[2] = "2016"
end

puts "#{answer}'s next birthday is #{date_with_comma.join(" ")}"
