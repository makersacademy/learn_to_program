def grandfather_clock &block
  t = Time.now.to_a
  t[2].times do 
    block.call 
  end
end

x = Proc.new do
  puts 'DONG!'
end

grandfather_clock &x