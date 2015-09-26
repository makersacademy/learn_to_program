#!/usr/bin/env ruby

foods = ['artichoke', 'brioche', 'caramel']
bob = ['hi','lo']
#puts foods
#puts foods.to_s
#puts foods.join(', ')
#puts foods.join(' :) ') + '8)'
#2.times do
#puts [foods, bob]
#end
bob.push 'another string'
puts bob.shuffle.last
puts bob.sort
puts foods.shuffle
puts bob.length
