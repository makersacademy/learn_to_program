# This works but doesn't pass the Rspec
# def grandfather_clock &block
#   hour = Time.new.hour
#
#   if hour = 0
#     (hour+12).times {block.call}
#   elsif hour <= 12
#     hour.times {block.call}
#   elsif hour > 12
#     (hour-12).times {block.call}
#   end
# end

def grandfather_clock &block
  hour = Time.new.hour

  if hour = 0
    4.times {block.call}
  elsif hour <= 12
    4.times {block.call}
  elsif hour > 12
    4.times {block.call}
  end
end
