def grandfather_clock &block
  currentTime = Time.now.hour
  currentTime -= 12 if currentTime > 12
  (currentTime-1).times do
    block.call
  end
end

