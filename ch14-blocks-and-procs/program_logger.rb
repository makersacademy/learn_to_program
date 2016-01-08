def log desc, &block
  puts 'Beginning "' + desc + '"...'
  result = block.call
  puts '..."' + desc + '" finished, returning: ' + result.to_s
end
​
log 'outer block' do
  log 'some little block' do
    109 - 104
  end
​
  log 'yet another block' do
  "I like Thai food!"
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
