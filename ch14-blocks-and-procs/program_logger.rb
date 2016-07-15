def program_log(block_description, &block)
   puts "Beginning \"#{block_description}\"..."
   value_returned = block.call
   puts "...\"#{block_description}\" finished, returning: #{value_returned}"
end

program_log("outer block") do
   program_log("some little block") do
      5
   end

   program_log("yet another block") do
      "I like Thai food!"
   end
   false
end
