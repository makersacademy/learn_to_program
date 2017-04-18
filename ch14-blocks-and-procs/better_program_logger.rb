$nesting_depth = 0

def better_log desc, &block

  puts "#{$nesting_depth == 0 ? nil : ' ' * $nesting_depth}Beginning \"#{desc}\"..."
  $nesting_depth = $nesting_depth += 1
  result = block[]
  $nesting_depth = $nesting_depth -= 1
  puts "#{$nesting_depth == 0 ? nil : ' ' * $nesting_depth}...\"#{desc}\" finished, returning: #{result}"

end

better_log 'outer block' do
  better_log 'some little block' do
    better_log 'teeny-tiny block' do
      'lOtS oF lOVe'.downcase
    end
    7 * 3 * 2
  end

  better_log 'yet another block' do
    '!doof naidnI evol I'.reverse
  end
end