def grandfather_clock &block
  # your code here

  if Time.new.hour < 12
    current_hr = Time.new.hour
  else
    current_hr = Time.new.hour - 12
  end

  current_hr.times do
     block.call
   end
   
end

grandfather_clock do
  puts 'DONG!'
end
