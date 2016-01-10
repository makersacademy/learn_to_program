def log desc, &block
   # your code here
 end 
 $indent_log = 0
 
 def better_log(desc, &block)
   indent = ' '*$indent_log
   puts indent + 'Beginning "' + desc + '"...'
   $indent_log += 1
   x = block.call
   $indent_log -= 1
   puts indent + '..."' + desc + '" finished, returning: ' + x.to_s
 end 
 
 better_log "outer block" do 
   better_log "some little block" do
     better_log "teeny tiny block" do
       "lotS Of lOve".downcase
     end
   22 + 20
   end
   better_log "yet another block" do
     '!doof naidnI evol I'.reverse
   end
 1 == 1
 end
 
 