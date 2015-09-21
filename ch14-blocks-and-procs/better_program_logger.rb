$count = 0

def log( string_desc, &block )
  puts "#{"  "*$count}starting block #{string_desc}..."
  $count += 1
  value = block.call
  $count -= 1
  puts "#{"  "*$count}...block #{string_desc} has finished! It returned: #{value}"
end

log "do something" do
    number = 1
    25000.times { number = number + number }
    log "do another thing" do
        "Nikesh is a funny man."
        end
    "#{number.to_s.length} digits" 
    end
