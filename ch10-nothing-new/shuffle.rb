def shuffle arr
  recursive_shuffle arr, []
end

def recursive_shuffle unshuff_arr, shuff_arr
  #sort_arr <<
  unshuff_arr.shuffle

#puts sort_arr
end
#
p harry = [1,2,3,4,5,5,4,3,2,1]
p shuffle harry
#p sort harry-new