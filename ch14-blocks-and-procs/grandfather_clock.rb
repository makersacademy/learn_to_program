def grandfather_clock &block
  current_hr = [0,12].include?(Time.new.hour) ? Time.new.hour : Time.new.hour % 12 
  current_hr.times do
    block.call
  end
end
