def log desc, &block
  puts 'Beginning "' + desc + '"...'
  out = block.call
  puts '..."' + desc + '" finished, returning: ' + out.to_s
end

log "outer block" do
  log "some little block" do 2 + 3 end
  log "yet another block" do "I like Thai food!" end
  false
end

