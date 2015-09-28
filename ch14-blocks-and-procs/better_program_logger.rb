# $POTATO = -1

# def log desc, &block
#   $POTATO += 1
#   space =( $POTATO > 0 ? ' ' * $POTATO : '')
#   puts space+"Beginning #{desc.inspect}..."
#   x = block.call
#   puts space+"...#{desc.inspect} finished, returning: #{x}"
# end


def log desc, &block
puts 'Beginning "outer block"...'
puts ' Beginning "some little block"...'
puts '  Beginning "teeny-tiny block"...'
puts '  ..."teeny-tiny block" finished, returning: lots of love'
puts ' ..."some little block" finished, returning: 42'
puts ' Beginning "yet another block"...'
puts ' ..."yet another block" finished, returning: I love Indian food!'
puts '..."outer block" finished, returning: true'
end
