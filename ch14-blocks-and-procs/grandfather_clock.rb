require 'time'
def grandfather_clock &block
p t = Time.now
p hours = t.hour
p hour = t.strftime('%I').to_i - 1
  hour.times do
    block.call
  end
end
grandfather_clock do
  puts 'DONG!'
end
# p t = Time.now
# p str = t.strftime('%I')
# p str.to_i
