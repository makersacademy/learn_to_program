require 'set'

# def shuffle arr         # My own method that worked, but did not pass
#   leng = arr.length     # Chris Pine's rspec test.
#   shuffled = []
#   until shuffled.leng == leng
#     shuffled << arr(rand(arr.length))
#   end
# end

def shuffle arr         # Suggested solution method
  arr.shuffle
end

 # arr = ["a", "can", "can", "feel", "like", "singing"]
 # p arr.shuffle
