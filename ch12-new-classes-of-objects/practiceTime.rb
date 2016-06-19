time = Time.new
puts "This exact moment: "
puts time

puts "gm time:"
puts Time.gm(2006,8,1)
puts "some specific time in the past: "
puts Time.local(2006, 8)

puts "some specific time in the past: "
puts Time.local(2003, 3, 13)

puts "some specific time in the past: "
puts Time.local(2003, 3, 13, 17, 31)

puts "some specific time in the future: "
puts Time.local(2103, 3, 13, 17, 31)