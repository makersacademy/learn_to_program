L = 'land'
s = 'water'

world = [[s, s, s, L, s, s, s, s, s, s, s],
         [s, s, s, L, s, s, s, L, L, s, s],
         [s, s, L, L, L, s, s, s, L, L, L],
         [s, s, s, L, L, L, L, L, L, L, s],
         [s, s, s, s, s, s, L, L, L, L, L],
         [s, s, s, s, L, L, L, L, L, L, L],
         [L, L, L, s, s, L, L, L, L, L, s],
         [s, s, L, L, L, L, s, s, L, L, s],
         [s, s, s, L, L, L, s, s, L, s, s],
         [s, s, s, s, s, L, L, L, s, s, s],
         [s, s, s, s, s, s, s, s, s, s, s]]

def continent_size world, x, y
  if world[x][y] != 'land'
    return 0
  end

  size = 1
  world[x][y] = 'counted land'

  size = size + continent_size(world, x -1, y -1)
  size = size + continent_size(world, x, y -1)
  size = size + continent_size(world, x +1, y -1)
  size = size + continent_size(world, x +1, y)
  size = size + continent_size(world, x +1, y +1)
  size = size + continent_size(world, x, y +1)
  size = size + continent_size(world, x -1, y +1)
  size = size + continent_size(world, x -1, y)
  size
end

puts continent_size(world, 5, 5)
