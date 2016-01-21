def grandfather_clock &block
  hour = Time.new.hour
  hour -= 12 if hour > 12
  hour = 12 if hour == 0
  hour.times { block.call } # or hour.times(&block)
end

grandfather_clock { puts 'DONG!' }