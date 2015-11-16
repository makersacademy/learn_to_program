def log desc, &block
  puts "Beginning #{desc.inspect}..."
  result = block[]
  puts "...#{desc.inspect} finished, returning: #{result}"
end

log 'outer block' do
  log 'some little block' do
    1**1 + 2**2
  end

  log 'yet another block' do
    '!doof iahT ekil I'.reverse
  end

  '0' == 0
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
