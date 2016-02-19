def program_log desc, &block
  puts 'Beginning "' + desc + '"...'
  puts '..."' + desc + '" finished, returning: '+ block.call.to_s
 
  # your code here
end

#log "outer block" do 
 # log 'some little block' do
  #  1**1 + 2**2
 # end
#log 'yet another block' do
 # '!doof iahT ekil I'.reverse
#end
#end

