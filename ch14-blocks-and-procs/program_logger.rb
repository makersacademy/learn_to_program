def program_log desc, &block
  puts "Beginning \"#{desc}\"..."
  returned = block.call
  puts "...\"#{desc}\" finished, returning: #{returned}"
  # your code here
end

# program_log 'even numbers from o to 10' do
#   program_log 'inner block' do
#     "I am not sure what this will do"
#   end
#   arr = Array(0..10)
# end
