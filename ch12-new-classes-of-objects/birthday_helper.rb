#!usr/bin/env ruby

# list.txt 
# Christopher Alexander,  Oct  4 1936
# Christopher Lambert,    Mar 29 1957
# Christopher Lee,        May 27 1922
# Christopher Lloyd,      Oct 22 1938
# Christopher Pine,       Aug  3 1976
# Christopher Plummer,    Dec 13 1927
# Christopher Walken,     Mar 31 1943
# The King of Spain,      Jan  5 1938

LOC_HOME = Dir.home

Dir.chdir ("#{LOC_HOME}/Desktop")

list = Array[*File.read('list.txt').split("\n")]
hash = list.map {|i| Hash[*i.split(",")]}.inject(:merge)

answer = ""
t = Time.now

while hash.has_key?(answer) == false
puts "Whose birthday you wanna know? Today is #{t.day}/#{t.month}/#{t.year}"
puts "Please write the name and surname:"
puts hash.keys 

answer = gets.chomp
end

birthday = hash[answer].strip.match(/\w+\s+\d{1,2}/)
year = hash[answer].strip.match(/\d{4}$/)


puts "The next birthday is going to be: #{birthday}, and he will be #{(t.year)-(year.to_s.to_i)}" if hash.has_key?(answer)






