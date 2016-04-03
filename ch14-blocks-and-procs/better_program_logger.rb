  $number_of_tabs = 0

def better_log desc, &block
  line = " " * $number_of_tabs
  puts line+"Beginning #{desc.inspect}..."
  $number_of_tabs += 1
  result = block[]
  $number_of_tabs -= 1
  puts line+"...#{desc.inspect} finished, returning: #{result}"
end

better_log 'outer block' do
better_log 'some little block' do
better_log 'teeny-tiny block' do
    'lOtS oF lOVe'.downcase
  end
    42
  end
better_log 'yet another block' do
    '!doof naidnI evol I'.reverse
  end
  false
  end
