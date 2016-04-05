$indent_block = 0
  def better_log desc, &block
  # your code here
		prefix = " "  * $indent_block
  puts prefix + "Beginning \"#{desc}\"..."
  		$indent_block += 1
  result =block[]
		$indent_block -= 1
puts prefix + "...\"#{desc}\" finished, returning: #{result}"
end



