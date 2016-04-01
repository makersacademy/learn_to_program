#tried to use .indent but didnt know it was for rails haha fudge 
$space = 0
def better_log desc, &block
  # your code here 
  indent = ' ' * $space
  puts indent + 'Beginning "' + desc + '"...'
  $space += 1
  result = block.call
  $space -= 1
  puts indent + '..."' + desc + '" finished, returning: ' + result.to_s
end
