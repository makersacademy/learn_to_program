def grandfather_clock &block
  clock_hour = Time.new.hour >= 12 ? Time.new.hour - 12 : Time.new.hour
  clock_hour.times do
    block.call
  end
  # your code here
end