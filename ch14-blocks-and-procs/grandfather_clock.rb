def grandfather_clock(&block)
   (Time.new.hour % 12).times { block.call }
end

grandfather_clock do 
  puts 'DONG!'
  end 

