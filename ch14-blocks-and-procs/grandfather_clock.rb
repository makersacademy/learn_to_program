require 'time'
def grandfather_clock &block
t = Time.now
  hours = t.hour
hour = t.strftime('%I').to_i
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
