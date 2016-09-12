load 'english_number.rb'

num_at_start = 21 # change to 9999 if you want

num_at_start.downto(1) do |num_now|
  puts english_number(num_now).capitalize + " bottle#{num_now==1 ? '' : 's'} of beer on the wall, " +
    english_number(num_now) + " bottle#{num_now==1 ? '' : 's'} of beer!"
	
  puts "Take one down, pass it around, " +
     (num_now == 1 ? 'no more' : english_number(num_now-1)) + " bottle#{num_now == 2 ? '' : 's'} of beer on the wall!"
end