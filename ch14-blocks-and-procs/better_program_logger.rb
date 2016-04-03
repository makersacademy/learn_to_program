+$log = 0
 +def better_log desc, &block
 +  space = " "*$log
 +  puts space + "Beginning \"#{desc}\"..."
 +  $log += 1
 +  result = block.call
 +  $log -= 1
 +  puts space + "...\"#{desc}\" finished, returning: #{result}"
 +end
 +
 +better_log 'outer block' do
 +  better_log 'some little block' do
 +
 +    better_log 'yet another block' do
 +     '!doof iahT ekil I'.reverse
 +    end
 +      1**1 + 2**2
 +    end
 +'0' == 0
 + end