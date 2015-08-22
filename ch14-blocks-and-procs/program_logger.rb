def log desc, &block

  # Using the text Chris specifies on page 120.
  puts " Beginning \"#{desc}\"..."
  output = block.call
  puts "...\"#{desc} finished, returning: #{output}"

end

innerBlock = Proc.new do
  puts 'This puts comes from the inner block.'
  next 'This return comes from the inner block.' # Why can't I return from a block? See here: http://stackoverflow.com/questions/2325471/using-return-in-a-ruby-block
end

outerBlock = Proc.new do
  log('Inner block', &innerBlock)
  next 'This return comes from the outer block.' # Why can't I return from a block? See here: http://stackoverflow.com/questions/2325471/using-return-in-a-ruby-block
end

log('Outer block', &outerBlock)