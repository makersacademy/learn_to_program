$depth = 0

def better_log(description, &block)
    puts (" " * $depth) + 'Beginning "' + description + '"...'
    $depth += 1
    result = block.call
    $depth -= 1
    puts (" " * $depth) + '..."' + description + '" finished, returning: ' + result.to_s
end