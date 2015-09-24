$indent = 0

def better_log desc, &block
  prefix = String.new
  $indent.times do
   prefix << " "
  end
  puts "#{prefix}Beginning #{desc.inspect}..."
  $indent += 1
  result = block.call
  $indent -= 1
  puts "#{prefix}...#{desc.inspect} finished, returning: #{result}"
end

