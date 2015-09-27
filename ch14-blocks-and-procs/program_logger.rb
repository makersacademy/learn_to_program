def log desc, &block
  puts "Beginning #{desc}..."
  puts "#{desc} finished, returning: #{block.call}"
end

log 'outer block' do

log 'count to a million' do
  number = 0
  1000000.times do
    number = number + 1
  end
end


log 'the alphabet' do
 alphabet = []
  ('a'..'z').each do |letter|
    alphabet.push letter
  end
 alphabet.to_s
 end
false
end