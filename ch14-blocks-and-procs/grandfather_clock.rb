def grandfather_clock &block
  # Get the current hour and normalize it to a 12 hour clock
  h = Time.new.hour

  if h == 0
    h += 12
  end

  if h >= 13
    h -= 12
  end

  h.times do
    block.call
  end
end
