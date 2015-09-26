def grandfather_clock &block

  # Get current number of hours
  hours = Time.new.hour

  # A grandfather clock bongs 12 times for 00h, and once for 13h, etc.
  if hours == 0
    hours = 12

  else

    if hours > 12
      hours = hours - 12
    end

  end

  # Execute the block of code passed in
  hours.times do
    block.call
  end

end

