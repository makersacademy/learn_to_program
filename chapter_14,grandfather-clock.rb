#grandfather clock
def grandfather_clock &block
  hour = (Time.new.hour + 11)%12 + 1 #Time.new.hour only returns 0 to 23 -> but we want to have it from 
  #12 pm on and from 0am on. Therefore modulo 12 +1 as 23-0 is 23 not 24 

  hour.times(&block)
end

grandfather_clock { puts 'DONG!' }

