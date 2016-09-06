#unsorted_array = ['something', 'cry', 'history', 'phone']
#dont allow them to be in the same place as before


def shuffle arr
  puts arr.sort_by { rand }
end

shuffle(['something', 'cry', 'history', 'phone'])
