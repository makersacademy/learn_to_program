def log desc, &block
puts 'Beginning "' + desc + '"...'
outcome = block.call
puts '..."' + desc + '" finished, returning: ' + outcome.to_s
end