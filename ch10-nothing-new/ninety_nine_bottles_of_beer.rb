# your code here
#99 bottles program
puts "Welcome to my little ditty"
var = 99
while var > 0
  puts var.to_s  + ' bottles of beer on the wall'
  puts var.to_s  + ' green bottles of beer,'
  puts 'And if one of those bottles should accidentally fall'
  var = var -1
  puts 'There\'d be '+ var.to_s +
  ' green bottles sitting on the wall'
end