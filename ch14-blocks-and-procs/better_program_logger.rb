$nesting_depth = 0

def better_log desc, &block
  puts (" ")*$nesting_depth + 'Beginning "' + desc + '"...'
  $nesting_depth = $nesting_depth + 1
  result = block.call
  $nesting_depth = $nesting_depth - 1
  puts (" ")*$nesting_depth + '..."' + desc + '" finished, returning: ' + result.to_s
end

better_log 'outer block' do
  better_log 'some little block' do
    better_log 'teeny-tiny block' do
      "lots of love"
    end
    42
  end
better_log "yet anothe block" do
  "I like indian food"
end
false == true
end
