x = 'land'
o = 'water'

world = [[x,x,x,o,o,o,o,o,o,o],
         [o,x,x,x,x,o,o,o,o,o],
         [o,x,x,x,x,x,o,o,o,o],
         [o,x,x,x,x,x,o,o,o,o],
         [o,o,x,x,x,x,o,o,x,x],
         [o,o,o,x,x,o,o,x,x,x],
         [o,o,o,o,o,o,x,x,x,x],
         [o,o,o,o,o,o,o,o,x,x],
         [o,o,o,o,o,o,o,o,o,x],
         [o,o,o,o,o,o,o,o,o,x]]

def continent_size world, x, y
  return 0 if x < 0 || x > 9 || y < 0 || x > 9
  return 0 if world[x][y] != 'land'

  size = 1
  world[x][y] = "counted land"

  size += continent_size(world, x - 1, y - 1)
  size += continent_size(world, x, y - 1)
  size += continent_size(world, x + 1, y - 1)
  size += continent_size(world, x - 1, y - 1)
  size += continent_size(world, x - 1, y)
  size += continent_size(world, x - 1, y + 1)
  size += continent_size(world, x, y + 1)
  size += continent_size(world, x + 1, y + 1)
  size
end

puts continent_size(world, 1, 1)
puts continent_size(world, 9, 9)
