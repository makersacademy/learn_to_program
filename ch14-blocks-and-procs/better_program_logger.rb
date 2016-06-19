$counter = 0

def better_log desc, &block
  $counter += 1
  puts " " * ($counter - 1) + "Beginning \"#{desc}\"..."
  puts " " * ($counter - 1) + "...\"#{desc}\" finished, returning: #{block.call}"
  $counter -= 1

end

#=begin
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
  '0' == "0"
end
#=end
