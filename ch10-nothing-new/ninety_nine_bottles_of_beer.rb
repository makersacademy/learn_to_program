bottles_on_wall = 99

 while bottles_on_wall > 0
 	puts bottles_on_wall.to_s + ' bottles of beer on the wall,' + bottles_on_wall.to_s + ' bottles of beer.'
 	bottles_on_wall = bottles_on_wall -1
 	puts  'Take one down and pass it around,' + bottles_on_wall.to_s + ' bottles of beer on the wall.'
 end

 puts 'No more bottles of beer on the wall, no more bottles of beer.'
 puts 'Go down to the store, and buy some more, 99 bottles of beer on the wall'
