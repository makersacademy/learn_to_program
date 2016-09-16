def grandfather_clock &block 
  Time.new.hour.times{block.call}
end

grandfather_clock = Proc.new do 
  puts 'DONG!'
end