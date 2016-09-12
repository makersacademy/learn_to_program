def grandfather_clock &block
  time_now = Time.new.hour

    if time_now < 13
      time_now.times do
        block.call
      end  

    else
      time_now = time_now - 12
      time_now.times do
        block.call
      end

    end

end

grandfather_clock { puts 'DONG!'}