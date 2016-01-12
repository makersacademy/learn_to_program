def program_log desc, &block
  puts 'Beginning "'+ desc +'"...'
  final = block.call
  puts '..."'+desc+'" finished, returning: ' + final.to_s
  
  
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