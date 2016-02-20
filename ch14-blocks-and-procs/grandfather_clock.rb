def grandfather_clock &block
  time = Time.new.hour
  time.times do 
  	block.call
  end
end

grandfather_clock do

puts 'DONG!'

end
