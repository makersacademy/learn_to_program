def grandfather_clock &block
  hour = Time.new.hour % 12
  (&block) * hour   
end
