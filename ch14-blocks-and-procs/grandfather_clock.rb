def grandfather_clock &block
  Time.new.hour.times do
    block.call
  end
end