$nesting = 0

def better_log desc, &block
  puts (' '*$nesting)+'Beginning "'+ desc +'"...'
  $nesting += 1
  final = block.call
  $nesting -= 1
  puts (' '*$nesting)+'..."'+desc+'" finished, returning: ' + final.to_s


end

better_log "outer block" do
  better_log "some little block" do
    better_log "teeny-tiny block" do
      'lots of love'
    end
    5
  end
  better_log "yet another block" do
    'I like Thai food!'
  end
  false
end

