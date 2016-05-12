require 'date'

names_arr = []
names_hash = {}
File.open(Dir.home + "/temp_birthdays/pines_bdays.txt", 'r'){|f| f.each_line{|l| names_arr << l.chomp}}

name_reg = /^[\w\s]+(?=\,)/
date_reg = /(?<=\s)\w+[\w\s]+,[\w\s]+$/

names_arr.each do |line| 
  name = line.match(name_reg)[0]
  date = line.match(date_reg)[0]
  names_hash[name] = Date.parse(date)
end

def p_bday date
  months_old = ((Date.today - date).ceil/365.0).ceil*12
  puts "The next bday will be on #{ date >> months_old}"
end

loop do
  puts "Here is the list of available names"
  puts names_hash.keys
  puts "Please enter the name whose birthday you would like to know; type 'exit' to stop the program"
  name = gets.chomp
  if name =~ /[Ee]xit/
    break
  else
    until (names_hash.any? {|k| name == k[0]})
      puts "Please enter one of the names available"
      name = gets.chomp
    end
    p_bday names_hash[name]   
  end
end
