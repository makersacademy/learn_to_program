def log desc, &block
  puts "Beginning #{desc}..."
  output = block.call
  puts "... #{desc} finished, returning: " + output.to_s
end

log '"outer block"' do
  log '"some little block"' do
    5
  end
  log '"yet another block"' do
    puts "I like Thai food!"
  end
  3 > 4
end
