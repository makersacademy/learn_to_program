def grandfather_clock &block
  hour = Time.new.hour % 12
  hour == 0 ? 12.times(&block) : hour.times(&block)
end

grandfather_clock { puts 'DONG!'}
