def dictionary_sort arr
    rec_sort arr, []
end

  def rec_sort unsort_arr, sorted_arr
    if unsort_arr.length <= 0
      return sorted_arr
    end

    small = unsort_arr.pop
    still_unsort_arr = []

    unsort_arr.each do | i |
      if i.downcase < small.downcase
        still_unsort_arr.push small
        small = i
      else
        still_unsort_arr.push i
      end
    end

    sorted_arr.push small

    rec_sort still_unsort_arr, sorted_arr

end

  puts(dictionary_sort([' can' ,' feel' ,' singing' ,' like' ,' a' ,' can' ]))
