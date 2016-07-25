def grandfather_clock &block

  start = Time.new.hour

  if start == 0
    12.times do
      block.call
    end
  elsif start > 12
    (start-12).times do
      block.call
    end
  else
    start.times do
      block.call
    end
  end

end

grandfather_clock do
  puts "DONG!"
end
