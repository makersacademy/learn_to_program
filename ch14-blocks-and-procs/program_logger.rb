def program_log(block_desc, &block)
  puts 'Beginning "' + block_desc  + '"...'
  result = block.call
  puts '..."' + block_desc  + '" finished, returning: ' + result.to_s
end

program_log("outer block") do
  program_log("some little block") do
    25 / 5
  end
    program_log("yet another block") do
    "I like Thai food!"
    end
  false
end