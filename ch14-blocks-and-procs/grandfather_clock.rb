# def grandfather_clock &block
#   # your code here
# end
def grandfather_clock &block
  hour = Time.new.hour
  
  if hour == 0
      number = 12
      elsif hour > 12
      number = hour - 12
      else
          number = hour
      end
          

  number.times do 
    block.call
  end
end
