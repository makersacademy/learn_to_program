$indent_size = 0
def better_log desc, &block

  indent = " " * $indent_size
  puts "#{indent}Beginning \"#{desc}\"..."
  $indent_size = $indent_size + 1

  answer = block.call

  $indent_size = $indent_size - 1

  puts "#{indent}...\"#{desc}\" finished, returning: #{answer}"#{}"#{block}" ##{block.call}"
end

better_log 'outer block' do

  better_log 'some little block' do

    better_log 'teeny-tiny block' do

      'lOtS oF lOVe'.downcase
    end

    7 * 3 * 2

  end
  better_log 'yet another block' do

    "!doof naidnI evol I".reverse
  end

  '0' == "0"
end
