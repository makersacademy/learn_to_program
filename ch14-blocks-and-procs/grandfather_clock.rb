#How Chris Pine would do it
def grandfather_clock &block
  hour = (Time.new.hour + 11)%12 + 1

  hour.times(&block)
end

grandfather_clock { puts 'DONG!' }

#How you could do it
=begin
def grandfather_clock &block
  hour = Time.new.hour

  if hour >= 13
    hour = hour - 12
  end

  if hour == 0
    hour = 12
  end

  hour.times do
    block.call
  end
end
grandfather_clock do
  puts 'DONG!'
end
=end