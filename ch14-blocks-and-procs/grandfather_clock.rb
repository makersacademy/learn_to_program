def grandfather_clock &block
  hours = Time.new.hour
  #returns a number between 0 and 23, but want it to only ever run between 0-12 times. Use the modulus (aka. 23%12 = 11). This will work for any time except 12pm (Because 12%12 = 0, so will not call block)
  if hours == 12
    12.times do
      block.call
    end
  else
    (hours % 12).times do
      block.call
    end
  end
end