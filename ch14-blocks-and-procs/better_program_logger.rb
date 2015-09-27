$indent = 1

def log desc, &block
 prefix = ' '*$indent
 $indent += 1
 puts prefix + "Beginning #{desc.inspect}..."
  result = block.call
  $indent -= 1
  puts prefix + "...#{desc.inspect} finished, returning: #{result.to_s}"
end

log 'outer block' do
  log 'some little block' do
  	log 'teeny-tiny block' do
  		"lots of love"
  	end
  	 7 * 3 * 2
  end
  log 'yet another block' do
    "I love Indian food!"
  end
  '0' != 0
end
