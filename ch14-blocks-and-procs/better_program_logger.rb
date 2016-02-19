$count = 0
def better_log desc, &block
  
  start = " " * $count
  puts  start + 'Beginning "' + desc + '"...'
   $count += 1
  a= block.call.to_s
   $count -= 1
  puts start + '..."' + desc + '" finished, returning: ' + a
  
 
  
 
  # your code here
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

  