puts 'List some things here to shuffle:'
array = []

while true
  response = gets.chomp.to_s
  if response == ''
    break
  else
  array.push response
  end
end

def shuffle arr
puts arr.shuffle
end
puts shuffle array
