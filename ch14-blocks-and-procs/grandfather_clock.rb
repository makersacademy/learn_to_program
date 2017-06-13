def grandfather_clock &block
  # your code here
  Time.now.strftime("%I").to_i.times do
      block.call
  end
end