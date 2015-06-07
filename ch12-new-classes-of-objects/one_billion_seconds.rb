# find out the exact second you were born and find out when you'll turn 1 billion seconds old

born_at = Time.local(1983, 05, 21, 23, 32, 8)
sec_til_bil = born_at + 1000000000
puts "You will be one billion seconds old on #{sec_til_bil}"
puts "Scratch that sorry, you were one billion seconds old on #{sec_til_bil}"
