# def log desc, &block
#   puts "Beginning #{desc}..."
#   block.call
#   puts "....#{desc} finished, returning: "
#   block.call
#   puts (block.call).inspect
# end


# log("outer block") do
#   log("some little block") {puts 5}
#     log("yet another block") {puts "I like Thai food!"}
# end

def log desc, &block
  puts 'Beginning "' + desc + '"...'
  result = block.call
  puts '..."' + desc + '" finished, returning: ' + result.to_s
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
