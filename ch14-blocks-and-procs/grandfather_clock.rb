def grandfather_clock &block
  n = Time.new.hour
  n = n-12 if n > 12
  n = 12 if n == 00
  n.times do block.call
  end
end


grandfather_clock do
	puts 'CUCKOO!'
end