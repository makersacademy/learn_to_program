def program_log desc, &block
  puts "Beginning \"#{desc}\"..."
  puts "...\"#{desc}\" finished, returning: #{block.call}"
end

program_log 'outer block' do

  program_log 'count to a million' do
    number = 0
    1000000.times do
      number = number + 1
    end
  end


  program_log 'the alphabet' do
   alphabet = []
    ('a'..'z').each do |letter|
      alphabet.push letter
    end
   alphabet.to_s
   end
false
end