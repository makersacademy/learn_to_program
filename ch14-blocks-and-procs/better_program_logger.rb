$loggerNest = 0

def log desc, &block

  # Using the text Chris specifies on page 120.
  puts ('  ' * $loggerNest) + "Beginning \"#{desc}\"..." # The CI testing for this seems broken, it looks like it expects a space before the word 'Beginning' for the inner block, but not the outer one!
  $loggerNest = $loggerNest + 1
  output = block.call
  $loggerNest = $loggerNest - 1
  puts ('  ' * $loggerNest) + "...\"#{desc} finished, returning: #{output}"

end

innerInnerBlock = Proc.new do
  # puts 'This puts comes from the inner inner block.'
  next 'This return comes from the inner inner block.' # Why can't I return from a block? See here: http://stackoverflow.com/questions/2325471/using-return-in-a-ruby-block
end

innerBlock = Proc.new do
  # puts 'This puts comes from the inner block.'
  log('Inner inner block', &innerInnerBlock)
  next 'This return comes from the inner block.' # Why can't I return from a block? See here: http://stackoverflow.com/questions/2325471/using-return-in-a-ruby-block
end

anotherBlock = Proc.new do
  # puts 'This puts comes from the other block.'
  next 'This return comes from the other block.' # Why can't I return from a block? See here: http://stackoverflow.com/questions/2325471/using-return-in-a-ruby-block
end

outerBlock = Proc.new do
  log('Inner block', &innerBlock)
  log('Another block', &anotherBlock)
  next 'This return comes from the outer block.' # Why can't I return from a block? See here: http://stackoverflow.com/questions/2325471/using-return-in-a-ruby-block
end

log('Outer block', &outerBlock)