def grandfather_clock &block
  hr = Time.new.hour

  if (hr > 12)
  	hr = hr%12
  end

  hr.times {block.call}


end