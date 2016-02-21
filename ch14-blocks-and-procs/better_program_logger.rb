$log_depth = 0

def log desc, &block
    gap = " " * log_depth
  puts "#{gap}Beginning #{desc}..."
  log_depth += 1
  result = block.call
  log_deptch -= 1
  puts "#{gap}...#{desc} finished, returning: #{result.to_s}"
end

log "outer block" do
    log "some little block" do
        10 / 2
    end
    
    log "yet another block" do
        "I like Thai food!"
    end
    false
end