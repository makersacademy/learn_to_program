def program_log desc, &block
  # your code here
  puts 'Beginning "' + desc + '"...'
  value = block.call
  puts '..."' + desc + '" finished, returning: ' + value.to_s

end

=begin
log "outer block" do
  log "some little block" do
    1**1 + 2**2
  end

  log "yet another block" do
    "!doof iahT ekil I".reverse
  end

  "0" == 0
end
=end