def grandfather_clock &block
  hour = (Time.new.hour + 11)%12 + 1
  hour.times(&block)
#  hour = (12 - Time.new.hour)

# hour.times do
#    block.call
#  end
end
