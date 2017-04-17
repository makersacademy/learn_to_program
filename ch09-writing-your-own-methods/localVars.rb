def double_this num
  num_times_2 = num * 2
  puts num.to_s + ' doubled is ' + num_times_2.to_s + '!'
end

double_this 44
#This method has two variables 'num' & 'num_times_2'. These work inside the method meaning they are local.
#If we try them outside the method, they will throw up an error though.

puts num_times_2.to_s
