birthday = Time.local(1987, 6, 30)
birthday_billion = birthday + 1000000000
# current_time = Time.new

happened = Time.new < birthday_billion ? "will turn" : "turned"

puts "I #{happened} one billion seconds old on: #{birthday_billion}."