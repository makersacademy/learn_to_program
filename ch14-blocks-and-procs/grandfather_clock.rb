def grandfather_clock &block
  thetime = Time.new.hour

  if thetime == 0
    thetime = 12
  end

  if thetime >= 13
    thetime = thetime - 12
  end

  thetime.times(&block)
end

grandfather_clock do
  puts "DONG!"
end