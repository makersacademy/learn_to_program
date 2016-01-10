def program_log desc, &block  
  puts "Beginning \"#{desc}\"..."
  result = block.call
  puts "...\"#{desc}\" finished, returning: #{result}"
end

program_log "outer block" do   #THIS IS BLOCK 1 
	program_log "some little block" do #This is a block within block 1, let's call it block 1A
		2 + 3
	end
	program_log "yet another block" do #This is another block within block 1, lets call it block 1B
		"I like Thai Food"
	end
end


#WHATS HAPPENING?

# we've called the method called program_log and we've fed it the desc "outer block" 
# and the block containing blocks 1A and 1B

# It duly starts out by evaluating the method program_log for "outer block", matching "outer block" to the 'desc' argument

# => "Beginning "Outer Block"..."

# It then realises it's been fed the method program_log in Block1's block, which we've called 1A. 
# It starts to evaluate program_log, it realises now desc = "some little block" and that &block = 2+3 (we've called this block 1A)


#=> "Beginning "some little block"..."
#=> "... "some little block" finished, returning "5"" (The 5 is the result of evaluating the block 2+3)

#It continues on it's merry way on Block 1 (The big outer block) and realises it's fed the method program_log again
# This time desc = "yet another block" and &block = "I like Thai Food" (we've called this block 1B)

# => "Beginning "yet another block"..."
# => "..."yet another block" finished, returning: "I like Thai food"" 

#It now realises that it has evaluated the &block bit of the "outer block"

#=> "..."outer block" finished, returning: " 



