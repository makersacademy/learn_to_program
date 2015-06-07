def grandfather_clock &block

    hrs_passed = Time.new.hour

    if hrs_passed <= 12
      hrs_passed.times do
        block.call
      end
    else
      clock_face_nums = hrs_passed - 12
      clock_face_nums.times do
        block.call
      end
    end
end

grandfather_clock do
  puts 'DONG'
end
