def program_log desc, &block
  # your code here
  puts "Beginning \"#{desc}\"..."
  result = block.call
  puts "...\"#{desc}\" finished, returning: #{result}"
end

# program_log "outer block" do
#   program_log "some little block" do
#     5
#   end
#   program_log "yet another block" do
#       "I like Thai food!"
#   end
#   false
# end