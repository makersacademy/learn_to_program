def log desc, &block
  puts "Beginniner outer block"
  test = block.call
  puts "'#{desc}' finished and returned: #{test.to_s}"

end

log "this block" do
  log "a different block" do
   "hello"
  end
  "hello two"
end
