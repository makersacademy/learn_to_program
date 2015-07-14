#Set @profile_toggle 'on' to turn profiling on

@profile_toggle = 'off'

def profile block_description, &block
if @profile_toggle == 'on'
start_time = Time.now
block.call
duration = Time.now - start_time
puts block_description+' : '+duration.to_s+' seconds'
else
block.call
end
end

# 25000 doublings block
profile '25000 doublings' do
number = 1

25000.times do
number = number + number
end

puts number.to_s.length.to_s+' digits'
end

# count to a million
profile 'count to a million' do
number = 0
1000000.times do
number = number + 1
end
end
