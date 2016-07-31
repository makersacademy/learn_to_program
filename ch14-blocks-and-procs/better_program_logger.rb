
$increment = ""

def better_log desc, &block
  puts $increment + 'Beginning "'+ desc + '"...'
  backspace = $increment
  $increment+=' '
  result = block.call
  $increment = backspace
  puts backspace + '..."' + desc + '" finished, returning: ' + result.to_s

end

  better_log 'outer block' do
    better_log 'some little block' do
      better_log 'teeny tiny block' do
        "lot's of love"
      end
      7*6
    end

    better_log 'yet another block' do
      '!doof naidnI evol I'.reverse #return of yet another block nested within outer block
    end

    '0' == '0' # end of outerblock, '0' equals '0' so returns true
  end
