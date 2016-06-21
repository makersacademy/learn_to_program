

# When log puts the started text it needs to increase
# nesting_depth and indent by 1
# When log puts the finished text it needs to decrease
# nesting_depth and indent by 1

$nesting_depth = 0
def log desc, &block
  indent = '  '*$nesting_depth
  puts indent + "Started '#{desc}'"
  $nesting_depth = $nesting_depth + 1
  returns = block.call
  $nesting_depth = $nesting_depth - 1
  puts indent + "Finished '#{desc}'. It returned:" + returns.to_s
end

log 'First Block' do
  log 'Second Block' do
    5 * 7 % 2
  end

  log 'Third Block' do
    if Time.new.hour < 12
      morn = "It is pre-noon!"
    else
      aft = "It is after noon!"
    end
  end
  'Alexander Craig Saunders'.reverse.capitalize
end
