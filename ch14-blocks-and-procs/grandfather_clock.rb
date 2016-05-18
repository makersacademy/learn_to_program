def grandfather_clock &block
  current_hour = Time.new.hour
  if current_hour > 12 then current_hour -= 12
  elsif current_hour == 0 then current_hour = 12
  current_hour.times do
	puts 'DONG!'
  end
  block.call 
end
