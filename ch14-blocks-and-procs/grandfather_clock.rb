def grandfather_clock &block
  hour = Time.new.hour % 12
  hour == 0 ? hour.times(&block) : 12.times(&block)
end

grandfather_clock { puts 'DONG!'}
