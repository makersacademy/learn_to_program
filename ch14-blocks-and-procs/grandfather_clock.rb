def grandfather_clock &block
 current_hour = Time.new.hour # your code here
  if current_hour > 12
  current_hour = current_hour - 12
  else
  current_hour
  end
  current_hour.times(&block)
end


grandfather_clock {puts "bong"}