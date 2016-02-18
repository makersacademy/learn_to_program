def grandfather_clock &block
  hour = Time.new.hour%12
  hour.times do
    block.call
  end
end

grandfather_clock do puts "DONG!" end
