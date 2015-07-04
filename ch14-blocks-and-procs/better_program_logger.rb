def log desc, &block
  puts ("  "*$nesting_depth)+"starting #{desc}..."
  output = block.call
  puts ("  "*$nesting_depth)+"#{desc} finished, returning:"
  puts ("  "*$nesting_depth)+output.to_s
end

$nesting_depth=0
log "outer block" do
  $nesting_depth=2
  log "some little block" do
    $nesting_depth=3
    log "teeny-tiny block" do
      "lots of love"
    end
    $nesting_depth=2
    5
  end
  $nesting_depth=2
  log "yet another block" do
    "I like Thai food!"
  end
  $nesting_depth=0
  false
end