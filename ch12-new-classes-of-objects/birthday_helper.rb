require 'time'

def birthday_helper input, list
  begin
  hash = {}
  list.split("\n").map{|x| x.split(/,/)}.each{|y| hash[y[0].downcase] = y[1].strip+y[2]}
  puts "#{input.split.map(&:capitalize).join(' ')} will be #{((Time.now - Time.parse(hash[input.downcase]))/60/60/24/365).ceil} years old on #{Time.parse(hash[input]).strftime("%d %B #{DateTime.now.year}")}"
  rescue
    puts "There's no name on file matching that!"
  end
end

file = File.open('./input.txt', 'r')
list = file.read
file.close

puts "What name would you like to look for?"
input = gets.chomp

birthday_helper(input, list)

