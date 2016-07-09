def program_log desc, &block
  puts "Beginning #{desc.inspect}..."
  outcome = block.call
  puts "...#{desc.inspect} finished, returning: #{outcome}"
end

program_log ("blockyblock") do
    program_log ("anotherblock") do
        false
    end
    true
end
