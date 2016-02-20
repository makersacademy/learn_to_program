# def shuffle arr       # Probably cheating
#   arr.reverse
# end
#
# def shuffle arr        # not recursive... probably not Ok. Come back to this.
#   length = arr.length
#   arr.sample(length)
# end

#takes 1 item at random from the old array and push it to the new one till no items are left
def shuffle arr
    arr.length > 1 ? [arr.slice!(rand(0..arr.length-1)) ] + shuffle(arr) : arr
end

# Chris Pine's "How you could do it" method:
# def shuffle arr
#   shuf = []
#
#   while arr.length > 0
#
#     rand_index = rand(arr.length) # Randomly pick one element of the array.
#
#     # Now go through each item in the array,
#     # putting them all into new_arr except for the
#     # randomly chosen one, which goes into shuf.
#     curr_index = 0
#     new_arr = []
#
#     arr.each do |item|
#       if curr_index == rand_index
#         shuf.push item
#       else
#         new_arr.push item
#       end
#
#       curr_index = curr_index + 1
#     end
#
#     # Replace the original array with the new,
#     # smaller array.
#     arr = new_arr
#   end
#
#   shuf
# end
