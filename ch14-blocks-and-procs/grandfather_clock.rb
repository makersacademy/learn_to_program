
def grandfather_clock &block
  time = ( Time.now.strftime "%I" ).to_i
  
  time.times { block.call }
end

grandfather_clock do 
    puts "DONG!"
end


