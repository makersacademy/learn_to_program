def grandfather_clock &block
  if Time.new.hour == 0 || Time.new.hour == 12
    count = 12
  else
    count = Time.new.hour % 12
  end

  count.times(&block)

end

grandfather_clock do
  puts "DING!"
end


