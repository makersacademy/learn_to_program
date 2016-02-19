
def grandfather_clock(&block)
count= Time.new.hour
if count > 12
  count =(count)-12
end
count.times do |variable|
  block.call
end
end

grandfather_clock {puts "Dong"}
