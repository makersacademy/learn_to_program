def program_log desc, &block
  puts "Beginning \"#{desc}\"..."
  target_v = block[] #call the received block
  puts "...\"#{desc}\" finished, returning: #{target_v.to_s}"
end

program_log("outer block") do
  program_log("some little block") { 1**1 + 2**2 }

  program_log("yet another block") { "I like Thai food!" }

  false
end
