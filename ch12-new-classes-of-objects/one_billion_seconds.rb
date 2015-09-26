mattia = Time.gm(1984, 11, 5)

now = Time.now

output = now - mattia
puts output

num = (60*60*24*365) + (60*60*6)
puts num

diff_2 = output / num.to_f
puts diff_2
# your code here