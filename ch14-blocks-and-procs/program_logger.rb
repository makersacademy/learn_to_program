#cannot get this to pass rspec even after copying the code from the book.
def program_log desc, &block
  puts "Beginning #{desc.inspect}..."
  result = block []
  puts "...#{desc.inspect} finished, returning: #{result}"
end
