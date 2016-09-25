$log_depth = 0

def log desc, &block
    prefix = ' ' * $log_depth
    puts prefix + "Beginning '#{desc}'..."
    $log_depth = $log_depth + 1
    output = block.call
    $log_depth = $log_depth - 1
    puts prefix + "...'#{desc}' finished, returning: #{output}"
  
end

log "outer block" do
    log "some little block" do
        log "teeny-tiny block" do
            "lots of love"
        end
        42
    end
    log "yet another block" do
        "I like Thai food!"
    end
    false
end