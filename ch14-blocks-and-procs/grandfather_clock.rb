def grandfather_clock &block
  # your code here
  #12 am 12pm?
  hour = Time.new
  if hour > 12
      hour = hour -12
      elsif hour == 0
      hour = 12
  end
  hour.times do block.call end
end
grandfather_clock do 'DONG!' end