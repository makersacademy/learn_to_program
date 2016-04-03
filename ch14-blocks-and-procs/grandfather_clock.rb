def grandfather_clock &block
  repeat = (Time.new.hour.to_i)
  	if repeat > 12 then repeat -= 12 end
  repeat.times do block.call end
end

