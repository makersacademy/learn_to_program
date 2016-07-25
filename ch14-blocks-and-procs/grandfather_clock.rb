def grandfather_clock &block
  actual_hour = Time.new.hour
  actual_hour.times do
    block.call #block content runs here
  end
end

grandfather_clock { puts "DONG!" }
