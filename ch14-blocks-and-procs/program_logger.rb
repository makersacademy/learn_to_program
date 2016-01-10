def log desc, &block
   # your code here
 end 
 def program_log(desc, &block)
   puts 'Beginning "' + desc + '"...'
   x = block.call
   puts '..."' + desc + '" finished, returning: ' + x.to_s
 end
 
 program_log('outer block') do
   
   program_log('some little block') do
     25/5
   end
 
   program_log('yet another block') do
     "I like Thai food!"
   end
   false
   
 end