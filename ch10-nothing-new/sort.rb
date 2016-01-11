def sort arr
  @unsorted = arr
  @result = []
  i = @unsorted.length

  while i > 0
    find_smallest @unsorted
    @unsorted.slice!(@unsorted.index(@smallest))
    i -= 1
  end
  @result
end

def find_smallest array
  @smallest = array.first
  array.each_with_index do |val, index|
    if val < @smallest
      @smallest = val
    end
  end
  @result << @smallest
end
