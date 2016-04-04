$indent = 0

def log desc, &block
  space = ' ' * $indent
  puts "#{space} Beginning '#{desc}' ..."
  $indent = $indent + 1
  output = block.call
  puts "#{space} ... '#{desc}' finished, returning: #{output}"
  $indent = $indent - 1
end


log 'outer block' do
  log 'some little block' do 
    1 * 5
  end

  log 'yet another block' do
    "I like Thai food!"
  end
end

