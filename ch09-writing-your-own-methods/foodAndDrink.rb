def food name
  if name == 'Joe'
    return 'Papa Johns'
  end

  if name == 'Charlotte'
    return 'Beetroot Salad'
  end

  'Chicken Shop'
end

def drink name
  if name == 'Steve'
    'Weak Earl Grey'
  elsif name == 'Kate'
    'Weak Tea'
  else
    'Coffee'
  end
end

puts food ('Joe')
puts food ('Gary')
puts food ('Charlotte')
puts drink ('Bill')
puts drink ('Kate')
puts drink ('Steve')
