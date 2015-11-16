def grandfather_clock &block
  current_hour = Time.new.hour > 12 ? Time.new.hour - 12 : Time.new.hour
  current_hour.times(&block)
end

#  I need to revisit why strftime is not working
# def grandfather_clock &block
#   hour = Time.new.strftime("%I")
#   hour = hour.to_i
#
#   hour.times(&block)
# end
#
# grandfather_clock { puts 'DONG!' }
