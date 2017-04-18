def grandfather_clock &block
t = Time.new.hour

  if t > 12
  t = t - 12
  elsif t == 0
  t = 12
  end

t.times do
  block.call
  end
end

grandfather_clock do puts 'DONG!'
  end