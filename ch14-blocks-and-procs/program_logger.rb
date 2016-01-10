def program_log desc, &block
  puts "Beginning \"#{desc}\"..."
  puts "...\"#{desc}\" finished, returning: #{block.call}"
end

program_log 'first' do
  program_log 'second' do
    puts "yes"
    false
  end
  true
end