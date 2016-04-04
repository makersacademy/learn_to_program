def grandfather_clock &block
  hour = Time.new.hour
    if hour < 13
      chimes = hour
    elsif hour >= 13
      chimes = hour - 12
    end
chimes.times do
  block.call
end

end
