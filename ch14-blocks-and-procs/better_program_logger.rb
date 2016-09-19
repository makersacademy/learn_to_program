$nest_depth = 0

def log desc, &block
  prefix = " "*$nest_depth
  puts prefix + "Beginning " + desc + "..."
  $nest_depth += 1
  result = block.call
  $nest_depth -= 1
  puts prefix + "..." + desc + " finished, returning: " + result.to_s

end

log "outer block" do
  log "some little block" do
    5
  end
  log "yet another block" do
    "I like Thai food!"
  end

  '0' == "0"
end
