M = 'land'
o = 'water'
world = [[o,o,o,o,o,M,o,o,o,o,o],
         [o,o,o,o,M,M,o,o,o,o,o],
         [o,o,o,M,M,o,o,o,M,M,o],
         [o,o,o,M,o,o,o,o,o,M,o],
         [M,M,M,M,o,M,M,M,M,M,M],
         [o,o,o,M,M,M,M,M,o,o,o],
         [o,o,o,M,M,M,M,M,M,M,M],
         [o,o,o,M,M,M,M,M,M,o,o],
         [o,o,o,o,o,M,M,M,o,o,o],
         [o,M,o,o,o,M,o,o,o,o,o],
         [o,o,o,o,o,M,o,o,o,o,o]]
def continent_size world, x, y
  if world[y][x] != 'land' || world[y][x] == nil
    return 0
  end
  size = 1
  world[y][x] = 'counted land'
  size = size + continent_size(world, x-1, y-1)
  size = size + continent_size(world, x , y-1)
  size = size + continent_size(world, x+1, y-1)
  size = size + continent_size(world, x-1, y )
  size = size + continent_size(world, x+1, y )
  size = size + continent_size(world, x-1, y+1)
  size = size + continent_size(world, x , y+1)
  size = size + continent_size(world, x+1, y+1)
  size
end
puts continent_size(world, 5, 5)