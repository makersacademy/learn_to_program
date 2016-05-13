# ==============================Chris Pine version =============================

# def grandfather_clock &block
#   t = Time.new.hour
#   if t >= 13
#     t = t - 12
#   end
#   if t == 0
#     t = 12
#   end
#   t.times do
#     block.call
#   end
# end

# ==============================Makers Academy rspec bug=============================

#does not accept time.now, increments by one too many
#
# def grandfather_clock &block
#   t = Time.now.hour
#   if t >= 13
#     t = t - 12
#   end
#   if t == 0
#     t = 12
#   end
#   t.times do
#     block.call
#   end
# end

# error: 'dongs 5 times instead of 4'
# ==============================my version=============================

def grandfather_clock &block
  #get the time
 t = Time.new.hour
 # # get local time
 # t = t.localtime
 #get hours passes since midnight, convert to integer
 #t = t.strftime("%H").to_i  --- does not pass rake: error
 if t >= 13
   t -= 12
 end
 if t == 0
   t = 12
 end
 #pass the time into the block
 	t.times do
 		block.call
 	end
end
