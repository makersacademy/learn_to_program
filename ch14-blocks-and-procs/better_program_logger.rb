$nesting_depth = 0

def better_log desc, &block
        spacing = " " * $nesting_depth
	puts spacing + 'Beginning "' + desc + '"...'
	$nesting_depth += 1
        resulting = block.call
	$nesting_depth -= 1
        puts spacing + '..."' + desc + '" finished, returning: ' + resulting.to_s
end

better_log 'outer block' do
        better_log 'some little block' do
                7 * 6
        end
		better_log 'teeny-tiny block' do
			"lots of love"
      		end
	better_log 'yet another block' do
                "I love Indian food!"
        end

1 == 1
end
