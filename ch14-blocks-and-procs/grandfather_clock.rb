def grandfather_clock &block
hour = (Time.new.hour + 11)%12 + 1
  hour.times(&block)
end
grandfather_clock { puts 'DONG!' }


# def grandfather_clock &block
#   t = Time.now.to_a
#   (t[2] > 12 ? t[2] - 12 : t[2]).times do 
#     block.call 
#   end
# end

# x = Proc.new do
#   puts 'DONG!'
# end

# grandfather_clock &x