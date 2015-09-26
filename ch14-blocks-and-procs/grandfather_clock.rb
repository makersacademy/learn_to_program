def grandfather_clock(&block)
  Time.new.hour.times{block.call}
end