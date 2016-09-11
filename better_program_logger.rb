def log block_description, &block
  $nesting_depth = 1
  print "I have started #{block_description}".indent($nesting_depth)

  block.call
  puts "#{block_description} has finished returning #{block}".indent($nesting_depth)
  $nesting_depth += 1

end


log "What´s up doc 1" do
  log "What's up doc 2" do

    puts "whats".indent($nesting_depth)

  end

  puts "up".indent($nesting_depth)

end



log "What´s up doc 3" do

  puts "doc?".indent($nesting_depth)

end
