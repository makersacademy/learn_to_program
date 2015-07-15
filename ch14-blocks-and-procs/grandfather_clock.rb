def grandfather_clock &block
  clock_hours = Time.new.hour > 12 ? Time.new.hour - 12 : Time.new.hour
  clock_hours.times do
  	block.call
  end
end

