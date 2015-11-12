def grandfather_clock &block
  hrs = Time.new.hour
  hrs -= 12 if hrs > 12
  hrs.times { block.call }
end
