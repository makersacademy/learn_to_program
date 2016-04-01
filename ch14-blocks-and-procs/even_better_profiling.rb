def profile block_description, &block
  profiling_on = true
  if profiling_on
    start_time = Time.new
    block.call
    duration = Time.new - start_time
    puts "#{block_description}: #{duration} seconds"
  else
    block.call
  end
end

# here's something cool i tried...

# class Profile
#   def initialize
#     @profiling_on = true
#   end

#   attr_reader :profiling_on

#   private
#   attr_writer :profiling_on

#   public
#   def profile block_description, &block
#     if profiling_on
#       start_time = Time.new
#       block.call
#       duration = Time.new - start_time
#       puts "#{block_description}: #{duration} seconds"
#     else
#       puts "Profiling is turned off"
#       block.call
#     end
#   end

#   def switch
#     self.profiling_on = !@profiling_on
#   end
# end

# profiler = Profile.new

# profiler.profile "count to a million" do
#   number = 0
#   1000000.times do
#     number = number + 1
#   end
# end

# profiler.switch

# profiler.profile "count to a million" do
#   number = 0
#   1000000.times do
#     number = number + 1
#   end
# end