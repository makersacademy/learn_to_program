def log desc, &block
  # your code here
  puts "Hi I am in this method printing this"
  puts 'I may go out of here soon'
  puts "I was called by #{desc}"
   temp = block.call
   puts temp + ' because small block ended'
  puts "i am back from  #{desc}"
  puts "off again i am afraid"
  temp = block.call
  puts temp + " last line of block"
  
end
log "Block 1" do
    puts 'Beginging this little block'
    puts 'still in here'
    ' finished last line'
end
log "Blokck 2" do
    puts "i am in here now another little blockhead2"
    "I am done too bockhead 2"
end    