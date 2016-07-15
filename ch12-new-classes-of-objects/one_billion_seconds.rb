MY_BIRTHDAY = Time.local(1990,8,9,8,30)

def how_old_am_i
	(Time.new - MY_BIRTHDAY)
end

def when_will_i_turn_one_billion_seconds_old
	MY_BIRTHDAY + 1000000000
end

print "I am currently " 
print how_old_am_i.floor.to_s.reverse.scan(/\d{1,3}/).join(",").reverse
puts " seconds old"

print "I will be one billion seconds old at "
puts when_will_i_turn_one_billion_seconds_old