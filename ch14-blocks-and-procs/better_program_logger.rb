$logcounter = 0
def log desc, &block
# your code here

end


def better_log desc, &block
  cheat = ' ' * $logcounter 
  puts cheat + 'Beginning "' + desc + '"...'
  $logcounter = $logcounter + 1
  result = block.call
  $logcounter = $logcounter -1
  puts cheat + '..."' + desc + '" finished, returning: ' + result.to_s 
end




better_log 'outer block' do
  better_log 'some little block' do
    better_log 'teeny-tiny block' do
      'lOtS oF lOVe'.downcase
    end

    42
  end

  better_log 'yet another block' do
    'I love Indian food!'
  end

  true

end