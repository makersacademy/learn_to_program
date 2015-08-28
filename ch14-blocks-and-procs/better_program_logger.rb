$logger_depth = 0

def log desc, &block
  $logger_depth += 1
  indent = '  ' * ($logger_depth - 1)
  puts indent + 'Beginning "' + desc + '"...'
  out = block.call
  puts indent + '..."' + desc + '" finished, returning: ' + out.to_s
  $logger_depth -= 1
end

log "outer block" do
  log "some little block" do
    log "teeny-tiny block" do "lots of love" end
    42
  end
  log "yet another block" do "I like Indian food!" end
  true
end
