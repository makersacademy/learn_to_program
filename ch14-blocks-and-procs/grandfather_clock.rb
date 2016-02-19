def grandfather_clock &block
  hour = Time.new.hour 
  hour -= 12 if hour > 12
  hour.times do 
      block.call
  end
end

grandfather_clock { puts "Hello mr Dong!" }