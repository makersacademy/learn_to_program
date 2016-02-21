

def program_log desc, &block

puts 'Beginning "' + desc + '"...'
puts '..."' + desc + '" finished, returning: ' + block.call.to_s



end

 #program_log 'Outer block' do
 # program_log "some little block" do
 #   1**1 + 2**2
 # end
 # program_log "yet another block" do
 # '!doof iahT ekil I'.reverse
 # end
#end 