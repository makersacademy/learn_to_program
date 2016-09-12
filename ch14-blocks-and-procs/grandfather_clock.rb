def grandfather_clock &block
  hr = (Time.new.hour + 11) % 12 + 1
  hr.times(&block)
end

grandfather_clock { puts 'DONG!' }
grandfather_clock { puts 'BEEP!'}
grandfather_clock { puts 'AH-HA!' }
grandfather_clock { puts 'BOOM!' }
