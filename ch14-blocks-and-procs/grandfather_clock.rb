def grandfather_clock &block
  hours_passed = Time.now.hour
  hours_passed -= 12 if hours_passed > 12
  hours_passed.times do block.call end
end