=begin 
Beginning "outer block"...

Beginning "some little block"...

..."some little block" finished, returning:

5

Beginning "yet another block"...

..."yet another block" finished, returning:

I like Thai food!

..."outer block" finished, returning: false
=end
def program_log desc, &block
  # your code here
  puts 'Beginning "'+desc+'"...'  
  result = block.call
  puts '..."'+desc+'" finished, returning: '+result.to_s
  
end

program_log "outer block" do 
	program_log "some little block" do
		5
	end
	program_log "yet another block" do
		'I like Thai food!'
	end
	false
end