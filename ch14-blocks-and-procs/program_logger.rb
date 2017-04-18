def program_log desc, &block
puts 'Beginning ' + "\"#{desc}\"" + '...'
val = block.call
puts '...' + "\"#{desc}\"" + ' finished, returning: ' + "#{val}"
end


