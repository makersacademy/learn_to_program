def program_log desc, &block
  puts "Beginning \"#{desc}\"..."
  output = block.call
  puts "...\"#{desc}\" finished, returning: #{output}"
end

program_log("outer block") do
  program_log("some little block") { 3 + 2 }
  program_log("yet another block") { "I like Thai food!" }
  1 == 2 # false
end
