=begin
Grandfather clock. Write a method that takes a block and calls it once for
each hour that has passed today. That way, if I were to pass in the block:
do
  puts 'DONG!'
end
it would chime each hour...
=end
require 'Time'

def grandfather_clock &block
    hour=Time.new.hour
    hour=hour-12 if hour>12
    hour.times do block.call end
end

grandfather_clock {puts 'DONG!'}