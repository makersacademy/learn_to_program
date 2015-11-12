def program_log desc, &block
puts "Beginning \"#{desc}\"..."
returned = block.call
puts "...\"#{desc}\" finished, returning: #{returned}"
end

block2 = Proc.new { 2 + 3 }
block3 = Proc.new {'I like Thai food!'}
block1 = Proc.new do
  program_log 'some little block', &block2
  program_log 'yet another block', &block3
  false
end

program_log 'outer block', &block1
