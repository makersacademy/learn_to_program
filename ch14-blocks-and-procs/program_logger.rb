def log desc, &block
  # your code here

  puts "Beginning \"#{desc}\"..."
  result =block.call

puts "...\"#{desc}\" finished, returning: #{result}"
end

log 'outer block' do
  log 'some little block' do
   5 * 1
  end

  log 'yet another block' do
    puts 'I like Thai food!'
  end
  
   false
end

#Beginning "outer block"...
#Beginning "some little block"...
#..."some little block" finished, returning:
#5
#Beginning "yet another block"...
#..."yet another block" finished, returning:
#I like Thai food!
#..."outer block" finished, returning: false