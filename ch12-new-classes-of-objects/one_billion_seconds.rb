require_relative '/Users/julia/Desktop/test/learn_to_program/ch10-nothing-new/english_number.rb'
time = Time.new
time2 = Time.local(1980, 7, 30, 17, 30)
my_age = time - time2
p "I'm #{english_number(my_age.to_i)} seconds old!"
