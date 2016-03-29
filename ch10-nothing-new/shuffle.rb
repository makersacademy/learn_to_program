def shuffle arr
  # your code here
  # already built-in method, probably much more efficient than what I can do...
  arr.shuffle
end

=begin
if a "manual" version is required, then, using the idea of sorted and unsorted arrays, but just using "random" index
=end

def shuffle_manual arr
  suffled = []
  while arr.size > 0
    msecs = ((Time.now.to_f - Time.now.to_i)*10000).to_i
    index_random = msecs % arr.size
    index = 0
    temp = []
    arr.each do |e|
      suffled << e if index == index_random
      temp << e if index != index_random
      index += 1
    end
    arr = temp
  end
  suffled
end

#puts shuffle_manual ["a","b"]