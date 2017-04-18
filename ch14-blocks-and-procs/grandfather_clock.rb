def grandfather_clock &block
current_hour = Time.new.hour
current_hour > 12 ? current_hour -= 12 : nil
current_hour.times do block.call end
end
