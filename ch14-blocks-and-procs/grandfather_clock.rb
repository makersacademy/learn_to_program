def grandfather_clock &block
  # your code here
  now = Time.new.hour
  
  hour = now % 12
  hour = 12 if hour == 0
  hour.times do
      block.call
  end
end