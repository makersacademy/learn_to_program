def program_log(description, &block)
    puts 'Beginning "' + description + '"...'
    result = block.call
    puts '..."' + description + '" finished, returning: ' + result.to_s
end