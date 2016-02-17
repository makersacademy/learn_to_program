$space = 0
def better_log desc, &block
    indent = ' ' * $space
  puts indent + 'Beginning "' + desc + '"...'
  $space += 1
  output = block.call
  $space -= 1
  puts indent + '..."' + desc + '" finished, returning: ' + output.to_s
  
end

better_log 'outer block' do
    better_log 'some little block' do
        better_log 'teeny-tiney block' do
            puts 'lots of love'
        end
    21 * 2
    end
    better_log 'yet another block' do
        puts 'I love Indian food!'
    end
    puts true
end
        