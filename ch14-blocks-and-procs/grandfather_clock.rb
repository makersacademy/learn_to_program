def grandfather_clock &block
  # your code here
  hour = Time.new.hour
  num_hours = hour == 0 ? 12 : hour % 12
  (1..num_hours).each(&block)
end


grandfather_clock do
  puts "DONG!"
end