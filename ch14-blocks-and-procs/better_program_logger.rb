$indent_number = 0
def log(desc, &block)
  puts '  ' * $indent_number + "Beginning '#{desc}'..."
  $indent_number += 1
  result = block.call
  $indent_number -= 1
  puts '  ' * $indent_number + "...'#{desc}' finished, returning: #{result}"
end

log 'outer block' do
  log 'some little block' do
    log 'teen-tiny' do 'lots of love' end
    42 end
  log 'yet another block' do 'I like Indian food!' end
  true
end
