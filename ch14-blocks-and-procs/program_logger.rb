def program_log desc, &block
 		puts 'Beginning "' + desc + '"...'  
		result = block.call 
		puts '..."' + desc + '" finished, returning: ' + result.to_s 
end 

program_log "outer blog" do 
	program_log "addition" do
		1+2+3+4+5
	end 
	
program_log "names start with a capital letter!" do 
		"My name is " +"dionysis".capitalize!
		end 

	"2" != 2
end