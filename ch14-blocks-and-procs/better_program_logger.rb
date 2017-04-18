$space = 0

def better_log desc, &block
  spaces = "\t"*$space
  puts spaces+"Beginning \"#{desc}\"..."
  $space += 1
  blockReturn = block[]
  $space -= 1
  puts spaces+"...\"#{desc}\" finished, returning: #{blockReturn}"
end