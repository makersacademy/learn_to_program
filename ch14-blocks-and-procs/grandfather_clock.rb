def grandfather_clock &block
  hour = Time.new.hour

  if hour >= 13
    hour -= 12
  end

  if hour == 0
    hour = 12
  end

  hour.times { block.call }
end
grandfather_clock { puts 'DONG!' }
