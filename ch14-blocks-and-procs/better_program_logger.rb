$nested_depth = 0
def better_log desc, &block
  puts "#{"\s" * $nested_depth}Beginning \"#{desc}\"..."
  $nested_depth += 1
  output = block.call
  $nested_depth -= 1
  puts "#{"\s" * $nested_depth}...\"#{desc}\" finished, returning: #{output}"
end

=begin
program_log "outer block" do
  program_log "some little block" do
    program_log "another block" do
    "I like Thai food!"
    end
    5
  end
  false
end

=end