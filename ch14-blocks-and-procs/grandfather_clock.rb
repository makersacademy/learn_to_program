

def grandfather_clock(&block) #proc method called grandfather_clock but proc = &block
  	hour = Time.new.hour   

  	if hour >= 13
    	hour = hour - 12
  	end

  	if hour == 0
    	hour = 12
  	end
  
  	hour.times { block.call } #run block for each time the time = the hour, call proc method with .call
    	  
end

grandfather_clock {puts 'CHIME!'}


# this is nothing like the example in Pine's book or Codeacademy, had to find help in Grounded Ruby...!

