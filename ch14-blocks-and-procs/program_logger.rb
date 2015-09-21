def log( string_desc, &block )
  puts "starting block..."
  value = block.call
  puts "...block has finished! It returned:"
  puts value
end


log "do something" do
    number = 1
    25000.times { number = number + number }
    log "do another thing" do
        "Nikesh is a funny man."
        end
    "#{number.to_s.length} digits" 
    end