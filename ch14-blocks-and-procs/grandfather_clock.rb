def grandfather_clock &block
  
  hour = Time.new.hour 
  
  hour = hour - 12 if hour >=13
  hour = 12 if hour ==0
  
  hour.times(&block)
end

grandfather_clock {
  puts "dong"
}