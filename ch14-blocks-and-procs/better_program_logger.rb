def better_log desc, &block
$indent ? $indent : $indent = 0
  puts "#{" " * $indent}Beginning \"#{desc}\"..."
    $indent += 1
  output = block.call
    $indent -= 1
  puts "#{" " * $indent}...\"#{desc}\" finished, returning: #{output}"
end

=begin
better_log "outer block" do
  better_log "some little block" do
    10 / 2
  end
  better_log "yet another block" do
    "I like Thai food!"
  end
  false
end
=end
