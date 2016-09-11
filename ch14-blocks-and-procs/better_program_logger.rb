$intend_line = 0

def better_log desc, &block
	intend = " " * $intend_line
 		puts intend + 'Beginning "' + desc + '"...'
 		$intend_line = $intend_line + 1
		result = block.call 
		$intend_line = $intend_line - 1
		puts intend + '..."' + desc + '" finished, returning: ' + result.to_s 
end 

better_log "outer blog" do 
	better_log "addition" do
		1+2+3+4+5
	end 
	
better_log "names start with a capital letter!" do 
		"My name is " +"dionysis".capitalize!
		end 

	"2" != 2
end