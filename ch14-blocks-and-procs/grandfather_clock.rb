def grandfather_clock &block
  current_hour = Time.new.hour
  if current_hour > 12 then current_hour -= 12 end
  current_hour.times do
	puts 'DONG!'
  end
  block.call 
end
