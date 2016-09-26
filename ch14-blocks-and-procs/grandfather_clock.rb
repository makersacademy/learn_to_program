=begin
Grandfather clock. Write a method that takes a block and calls it once for each hour that has passed today. 
That way, if I were to pass in the block: do puts 'DONG!' end
it would chime (sort of) like a grandfather clock. Test your method out with a few different blocks. 
Hint: You can use Time.new.hour to get the current hour. However, this returns a number between 0 and 23, 
so you will have to alter those numbers in order to get ordinary clock-face numbers (1 to 12). 
=end


def grandfather_clock &block
    hour =  Time.new.hour + 1
    hour = hour - 12 if hour > 13
    hour.times {block.call}
end

grandfather_clock do
    print "DONG!"
end