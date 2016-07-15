def grandfather_clock &block
hour = Time.new.hour

hour.times do
block.call
end
end

grandfather_clock do
puts 'DONG!'