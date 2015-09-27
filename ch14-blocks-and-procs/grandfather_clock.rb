def grandfather_clock &block
  hour_now = Time.new.hour


  case hour_now
  when 0
    hour_now = 12
  when 13..23
    hour_now = hour_now - 12
  end

  hour_now.times(&block)
end

grandfather_clock { puts 'DONG!' }
