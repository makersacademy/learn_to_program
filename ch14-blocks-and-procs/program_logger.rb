def program_log desc, &block
  puts 'Beginning "' + desc + '"...'
  result = block.call
  puts '..."' + desc + '" finished, returning: ' + result.to_s
end

program_log "outer block" do                  # no string required because it's defined in log , only write code to return false
  program_log "some little block" do
    1 + 4
  end

program_log "yet another block" do
    "I like Thai food!"
  end
  1 != 1
end