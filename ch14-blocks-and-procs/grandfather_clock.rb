def grandfather_clock &block
  current_hour = Time.new.hour > 12 ? Time.new.hour - 12 : Time.new.hour
  current_hour.times(&block)
end

grandfather_clock do
  puts 'DONG!'
end
