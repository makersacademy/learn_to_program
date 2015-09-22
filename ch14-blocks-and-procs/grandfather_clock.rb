def grandfather_clock &block
  if Time.new.hour > 12
    (Time.new.hour - 12).times do block.call
    end
  else
    (Time.new.hour).times do block.call
    end
  end
end

grandfather_clock do
  puts "DONG!"
end
