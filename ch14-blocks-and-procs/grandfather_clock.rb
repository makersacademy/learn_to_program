def grandfather_clock &block
  hours = Time.new.hour % 12

  hours.times do
    block.call
  end
end
