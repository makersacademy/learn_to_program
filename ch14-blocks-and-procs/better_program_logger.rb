$spacer = 0

def better_log desc, &block
puts "#{(' ' * $spacer)}" + 'Beginning ' + "\"#{desc}\"" + '...'
$spacer += 1
val = block.call
$spacer -= 1
puts "#{(' ' * $spacer)}" + '...' + "\"#{desc}\"" + ' finished, returning: ' + "#{val}"
end

