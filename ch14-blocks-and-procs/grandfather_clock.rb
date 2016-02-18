def grandfather_clock &block
  hour = (Time.now.hour + 1) % 12
  hour.times do
    block.call
  end

  # your code here
end

# chime = Proc.new do
#   puts "DONG!"
# end
#
# grandfather_clock do
#   puts "DONG!"
# end