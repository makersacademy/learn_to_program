puts 'Enter a list of words, press \'enter\' to quit and they will be returned sorted.'
word = 'one'
list =[]

while word != ''
  word = gets.chomp
  list.push word
end

def non_recursive_checker (arr)
  best = []
  while arr.length > 0
    first = arr.first
    pos = 0
    arr.each.with_index do |item, index|
      if item < first
        first = item
        pos   = index
      end
    end
    arr.delete_at(pos)
    best << first
  end
  puts best
end


def recursive_checker (arr, output)
  return output if arr.length == 0
    first = arr.first
    pos = 0
    arr.each.with_index do |item, index|
      if item < first
        first = item
        pos   = index
      end
    end
    arr.delete_at(pos)
    output << first
    recursive_checker(arr, output)
  end


def sort (arr)
  recursive_checker(arr, [])
end
