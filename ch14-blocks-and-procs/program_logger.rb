def log1 desc, &block
  # your code here
  puts 'Beginning "' + desc + '"...'    
  result = block.call
  puts '..."' + desc + '" finished, returning: ' + result.to_s
end