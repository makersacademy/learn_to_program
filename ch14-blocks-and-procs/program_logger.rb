

def program_log(des, &block)
    puts "Beginning \"#{des}\"..."
    puts "...\"#{des}\" finished, returning: #{yield}"
end


program_log("outer block") do
  program_log("some little block") do
    '5'
  end
  program_log("yet another block") do
    "I like Thai food!"
  end
  false
end
