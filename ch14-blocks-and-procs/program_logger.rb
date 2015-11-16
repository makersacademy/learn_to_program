def program_log desc, &block
  puts "Beginning \"#{desc}\"..."
  to_return = block.call
  puts "...\"#{desc}\" finished, returning: #{to_return}"
end







# def log desc, &block
#   block.call
# end
#
# log "outer block" do
#   puts "Beginning \"outer block\""
#
#   log "some little block" do
#     puts "Beginning \"some little block\"..."
#     puts "\"some little block\" finished, returning: "
#     p 5
#     end
#
#         log "yet another block" do
#         puts "Beginning \"yet another block\" "
#         puts "\"yet another block\" finished, returning: "
#         p "I like Thai Food!"
#         end
#
#
#   puts "\"outer block\" finished, returning: " p false
# end
