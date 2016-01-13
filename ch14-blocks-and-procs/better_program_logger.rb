$nest_lvl = 0

def better_log (desc, &block)
  puts (' ' * $nest_lvl) + 'Beginning "' + desc + '"...'
  $nest_lvl += 1
  returned = block.call
  $nest_lvl -= 1
  puts (' ' * $nest_lvl) + '..."' + desc + '" finished, returning: ' + returned.to_s
end

better_log 'outer block' do
  better_log 'inner block' do
    'There\'s a starman waiting in the sky'
  end
end