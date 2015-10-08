def grandfather_clock &block
  Time.new.hour < 12 ? (current_time = Time.new.hour) : (current_time = (Time.new.hour - 12))
  for each_hour in 1..current_time do
  block.call
  end
end

grandfather_clock do
 puts 'DONG!'
end