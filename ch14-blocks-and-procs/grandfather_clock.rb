def grandfather_clock &block
  # your code here
  i = 0
  loops = Time.new.hour < 13 ? Time.new.hour : Time.new.hour - 12
  while i < loops do
    block.call
    i += 1
  end
end

