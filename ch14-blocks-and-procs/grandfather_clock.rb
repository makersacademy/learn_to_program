def grandfather_clock &block
  # your code here
  hour = Time.new.hour
  hour > 12 ? hour = hour - 12 : (hour = 12 if hour == 0)
  hour.times do
       block.call
  end 
end