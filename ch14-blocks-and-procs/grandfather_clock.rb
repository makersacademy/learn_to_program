# Write a method that takes a block and calls it once for
# each hour that has passed today.
# Hint: You can use Time.new.hour to get the current hour.
# However, this returns a number between 0 and 23, so you
# will have to alter those numbers in order to get ordinary
# clock-face numbers (1 to 12).


def grandfather_clock &block
  hours_passed = Time.new.hour%12
  hours_passed.times do
    block.call
  end
end

grandfather_clock {puts 'DONG!'}
