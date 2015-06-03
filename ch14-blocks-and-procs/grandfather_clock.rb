def grandfather_clock block_description, &block
  hour_now = Time.new.hour
    if hour_now >= 13
      hour_now = hour_now - 12
      hour_now.times do
        block.call
      end
    elsif hour_now == 0
      hour_now = 12
      hour_now.times do
        block.call
      end
    else
      hour_now.times do
        block.call
      end
    end
end

grandfather_clock 'Chime' do
  puts 'DONG!'
end
