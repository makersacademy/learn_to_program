def grandfather_clock &block
  hours = Time.new.hour
  if hours <= 12
    hours.times { block.call }
  else
    hours = hours - 12
    hours.times {block.call}
  end
end

grandfather_clock do
  puts 'DONG!'
end

p Time.new.hour

# Write a method that takes a block and calls it once for each hour
# that has passed today. That way, if I were to pass in the block:
#           do
#             puts 'DONG!'
#           end
# it would chime (sort of) like a grandfather clock. Test your method
# out with a few different blocks.
# Hint: You can use Time.new.hour to get the current hour. However,
# this returns a number between 0 and 23, so you will have to alter
# those num- bers in order to get ordinary clock-face numbers (1 to 12)
