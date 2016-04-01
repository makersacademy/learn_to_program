def program_log desc, &block
  puts "Beginning #{desc.inspect}..."
  result = block[]
  puts "...#{desc.inspect} finished, returning: #{result}"
end

program_log 'outer block' do
  program_log 'some little block' do
    1111111111111 - 1111111111106
  end

  program_log 'yet another block' do
    'I like Thai food!'
  end
   false
end

#my soloution using procs

# def log some_proc, second_proc, third_proc
#   puts "Beginning outer block'...'"
#   some_proc.call
#   puts "'some little block' finished, returning: \n 5"
#   puts "'Beginning yet another block'"
#   second_proc.call
#   third_proc.call
#   "'outer block' finished, returning: false"
# end
#
# say_food = Proc.new do
# puts "I like thai food!"
# end
#
# little_block = Proc.new do
# puts "Beginning 'some little block...''"
# end
# another_block = Proc.new do
# puts "'yet another block' finished , returning: \n"
# end
#
# log little_block, another_block, say_food


# returns >> (Beginning outer block'...'
# Beginning 'some little block...''
# 'some little block' finished, returning:
#  5
# 'Beginning yet another block'
# 'yet another block' finished , returning:
# I like thai food!
# "'outer block' finished, returning: false")
