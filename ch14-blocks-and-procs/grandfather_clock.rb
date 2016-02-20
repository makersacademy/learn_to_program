def grandfather_clock &block
  # your code here
  the_24hour = Time.new.hour 
  the_12hour = the_24hour%12
  if the_12hour ==0
  	the_12hour =12
  else
  	the_12hour
  end

  the_12hour.times do 
  	block.call
  end
end