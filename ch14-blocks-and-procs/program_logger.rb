def program_log desc, &block
  puts 'Beginning "' + desc + '"...'
  result = block.call
    puts '..."' + desc + '" finished, returning: ' + result.to_s
end

program_log 'outer block' do
  program_log 'some little block' do
    6 -1
end
program_log "yet anothe block" do
  "I like thai food"
end
false == true
end
