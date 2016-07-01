def program_log desc, &block
  puts 'Beginning "' + desc + '"...'
    returned = block.call
    puts '..."' + desc +'" finished, returning: ' + returned.to_s
  end

program_log 'outer block' do

  program_log 'some little block' do
    1 + 4
  end

  program_log 'yet another block' do
    #"The hour in France now is #{Time.new.hour + 1} in 24 hour clock time."
    "I like Thai food!"
  end
false
end
