#!/usr/bin/env ruby



def log block_description, &block
  puts "Beginning \"#{block_description}\"..."
  value=block.call
  puts "...\"#{block_description}\" finished, returning: #{value}"
end
