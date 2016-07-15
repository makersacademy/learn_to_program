$nest_depth = 0

def better_log(block_description, &block)
   puts " " * $nest_depth + "Beginning \"#{block_description}\"..."
   $nest_depth += 1
   value_returned = block.call
   $nest_depth -= 1
   puts " " * $nest_depth + "...\"#{block_description}\" finished, returning: #{value_returned}"
end

better_log("outer block") do
   better_log("some little block") do
      5
   end

   better_log("yet another block") do
      "I like Thai food!"
   end
   false
end
