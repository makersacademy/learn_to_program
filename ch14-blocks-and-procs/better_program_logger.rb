$indent = 0
def log desc, &block
  spaces = '   '*$indent
  puts 'Beginning ' + desc + '...'
  $indent = $indent + 1
call = block.call

  puts '...' + desc + ' finished, returning: ' + call.to_s

end

log 'outer block' do
  log 'some little block' do
    log 'teeny-tiny block' do
      puts 'lots of love'
    end
    42
  end

log 'yet another block' do
  puts 'I like Indian food!'
end

'0' == 0
end