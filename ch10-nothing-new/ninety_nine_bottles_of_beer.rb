current_bottles = 99
next_bottles = current_bottles -1

while current_bottles > 0
 puts current_bottles.to_s + ' bottles of bears on the wall. ' + current_bottles.to_s + ' bottles of bears on the wall.'
 puts 'You take one down and pass it around. ' + next_bottles.to_s + ' bottles of beers left on the wall.'

 current_bottles = current_bottles - 1
 next_bottles = current_bottles - 1
 if current_bottles == 0
 break
 end
end