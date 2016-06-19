#!/usr/bin/env ruby

def shuffle arr

  shuff = []
  new_arr = []
  arr.each.with_index {|element, index| new_arr[index] = element}


  while new_arr.length > 0
    index = rand(new_arr.length)
    random_element = new_arr[index]
    shuff << random_element
    new_arr.delete_at(index)
  end

shuff

end
