$indent = 0

def better_log desc, &block

puts  ' '*$indent + 'Beginning "' + desc + '"...'
$indent += 1

result = block.call

$indent -= 1

puts ' '*$indent + '..."' + desc + '" finished, returning: ' + result.to_s



end



