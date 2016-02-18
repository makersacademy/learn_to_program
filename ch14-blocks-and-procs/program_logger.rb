def program_log desc, &block
  puts "Beginning \"#{desc}\"..."
  result = block.call
  puts "...\"#{desc}\" finished, returning: #{result}"
  # your code here
end


program_log 'foo' do
     program_log 'bar' do
      puts 'Jump around'
      'cabbage'
     end
     puts "I'm the king of the castle"
     'parsnips'
end