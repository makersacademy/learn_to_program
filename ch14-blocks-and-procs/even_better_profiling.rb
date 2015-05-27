# /usr/bin/env ruby

def profile descriptionOfBlock, &block, on

	if on
		startTime = Time.now
		block.call
		duration = Time.now - startTime
		puts descriptionOfBlock+':  '+duration.to_s+' seconds'
	else
		block.call
	end

end