def grandfather_clock &block
  # your code here
  time_now = Time.new.hour
  if time_now == 0
  	time_now = 12
  elsif time_now > 12
  	time_now = time_now - 12
  end

time_now.times(&block)
end


  		

grandfather_clock {puts "Ding Dong!"}

