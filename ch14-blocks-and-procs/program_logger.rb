def program_log desc, &block
  puts "Beginning #{desc.inspect}..."
  result = block[]
  puts "...#{desc.inspect} finished, returning: #{result}"
end

program_log 'outer block' do
  program_log 'some little block' do
    1**1 + 2**2
  end

  program_log 'yet another block' do
    '!doof iahT ekil I'.reverse
  end

  '0' == 0
end



def my_log desc, &block
  puts "Starting #{desc}"
  puts "#{block.call}"
  puts "Ending #{desc}"
end
my_log "outer block" do
  my_log "some little block" do
    1+1
  end
  my_log "yet another block" do
    "hello"
  end
end
