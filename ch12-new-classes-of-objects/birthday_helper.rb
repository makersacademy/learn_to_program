
require 'pry'
Dir.chdir "/Users/Office/Dropbox (Personal)/Development/Makers"

text = File.read "Pines_Birthday_list.txt"


lines = []
text.each_line do |a|
lines << a.split("\n")
end

count = lines.length

words= Array.new
lines.each do |a|
words << a.join.split(",")
end
words.flatten!
 


hash1 = Hash.new
count.times do
hash1[words.shift] = (words.shift+words.shift)

end

puts hash1["Christopher Alexander"]

