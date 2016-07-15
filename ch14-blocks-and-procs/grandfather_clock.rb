def grandfather_clock &block
  hours = Time.new.hour
  hours.times do
     block.call
  end
end

grandfather_clock do
   puts 'DONG'
end
