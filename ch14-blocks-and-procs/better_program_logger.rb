$nesting_depth = 0

def better_log desc, &block
  indent = " " * $nesting_depth
  puts "#{indent}Beginning #{desc.inspect}..."
  $nesting_depth += 1
  outcome = block.call
  $nesting_depth -= 1
  puts "#{indent}...#{desc.inspect} finished, returning: #{outcome}"
end

better_log ("blockyblock") do
    better_log ("anotherblock") do
        false
    end
    true
end
