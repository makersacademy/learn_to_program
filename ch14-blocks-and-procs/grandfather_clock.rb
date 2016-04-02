def grandfather_clock &block
  # your code here
  hour = Time.new.hour
  hour = hour  - 12 if hour > 12
 
hour.times do
	block.call
end	
end