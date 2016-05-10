
def birthday_helper(name)
file = File.new("input.txt", "r")
data = file.read
file.close

hash = {}

lines = data.split("\n")
sections = lines.map{|line| line.split(", ")}
sections.each{|section| hash[section[0]] = section[1] + " " + section[2]}

puts hash[name]
end