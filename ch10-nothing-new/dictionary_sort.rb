def dictionary_sort arr
  recur_dict_sort arr, []
end

def recur_dict_sort unsorted_array, sorted_array
  return [] if unsorted_array.empty?
  m_entry = unsorted_array.first.downcase
  m_index = 0

  unsorted_array.each_with_index do |x, i|
    if x.downcase < m_entry
      m_entry = x
      m_index = i
    end
  end

  sorted_array << unsorted_array[m_index]
  unsorted_array.delete_at(m_index)

  recur_dict_sort unsorted_array, sorted_array

  sorted_array
end
