$tab = 0
def better_log desc, &block
prefix = ' '*$tab
  puts prefix + 'Beginning "' + desc + '"...'
$tab = $tab + 1
result = block.call
$tab = $tab - 1
  puts prefix + '..."' + desc + '" finished, returning: ' + result.to_s

end


  better_log 'outer block' do
    better_log 'some little block' do
      4+1
    end

    better_log 'yet another block' do
       "I like Thai food!"
    end
     false
    end
