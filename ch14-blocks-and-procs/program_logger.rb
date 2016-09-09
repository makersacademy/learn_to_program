#cannot get this to pass rspec even after copying the code from the book.
def log desc, &block
  puts 'Beginning "' + desc + '"...'
  result = block.call
  puts '..."' + desc + '" finished,  returning: ' + result.to_s
end
