def grandfather_clock &block
  Time.new.hour == 0 ? n=12 : n = Time.new.hour - 12*(Time.new.hour/13)
  n.times(&block)
end

grandfather_clock do
  puts 'DONG!'
end