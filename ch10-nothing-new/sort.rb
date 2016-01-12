def sort arr
  recursive_sort arr, []
end

def recursive_sort unsorted_array, sorted_array
  return [] if unsorted_array.empty?
  m_entry = unsorted_array.first
  m_index = 0

  unsorted_array.each_with_index do |x, i|
    if x < m_entry
      m_entry = x
      m_index = i
    end
  end

  sorted_array << unsorted_array[m_index]
  unsorted_array.delete_at(m_index)

  recursive_sort unsorted_array, sorted_array

  sorted_array
end
