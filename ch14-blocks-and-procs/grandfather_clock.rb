def grandfather_clock &block
  times = (Time.new.hour) % 12
  times.times {block[]}
end