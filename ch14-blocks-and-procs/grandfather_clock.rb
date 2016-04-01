def grandfather_clock &block
  hour = Time.new.hour
  if hour > 12
    hour -= 12
  end
  hour.times(&block)
end

grandfather_clock { puts 'DONG!' }
