def grandfather_clock &block
  time = Time.new.hour
  time > 12 ? (time - 12).times(&block) : time.times(&block)
end