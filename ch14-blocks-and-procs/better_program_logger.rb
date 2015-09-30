$indent = 0

def log desc, &block
  puts " "*$indent + "Beginning #{desc.inspect}..."
  $indent +=1
  result = block.call
  $indent -=1
  puts " "*$indent + "#{desc.inspect} finished, returning: #{result}"
end

log "outer block" do
  log "some little block" do
    log "some tiny block" do
    23 * 8
    end
    "I love icecream".capitalize
  end
  log "yet another block" do
    2 > 3? true : false
  end
  "0" == 0
end
