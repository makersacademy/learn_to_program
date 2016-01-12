

def grandfather_clock &block
	how_may_times = Time.new.hour % 12
	if how_may_times == 0
		how_may_times = 12
	end
	how_may_times.times do 
		block.call
	end
end
  