def grandfather_clock &block
  time = Time.new.hour
  time >12 ? time-=12 : time
  time.times {block.call}
end

grandfather_clock do
  puts 'DONG!'
end
