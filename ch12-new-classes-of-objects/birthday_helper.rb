require 'time'
require 'date'
Dir.chdir '/Users/julia/Desktop/test/learn_to_program'
info_str = File.read 'birthdays.txt'
info_arr = info_str.lines.map{|x| x.strip }
info_h = Hash[info_arr.map {|el| el.split ",\t"}]
puts "Please enter family name and name of the person whos bd you want to know, hit enter"
name = gets.chomp
bd = info_h.values_at(name).first.to_s
date = Time.parse(bd)
t = Time.now
years = ((t - date) / (60*60*24*365)).to_i
if date.mon < t.mon
puts  "#{name} next bithday is on #{date.mon}-#{date.day} next year"
else
puts  "#{name} next bithday is on #{date.mon}-#{date.day} this year"
end
puts
puts "He's going to celebrate his #{years}th birthday!"
