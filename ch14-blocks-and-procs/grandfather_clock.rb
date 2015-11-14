def grandfather_clock &block
  chimes = Time.new.hour
  chimes -= 12 if chimes.between?(13, 23)
  chimes.times { block.call }
end