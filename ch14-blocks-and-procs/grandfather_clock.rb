def grandfather_clock &block
  current_time = Time.new.hour
  hours = current_time - 12

    hours.times do
      block.call
    end

end

grandfather_clock do |variable|
  puts "Dong!"
end
