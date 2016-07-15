M = 'land'
o = 'water'

world = [[o,o,o,o,o,o,o,o,o,o,o],
         [o,o,o,o,M,M,o,o,o,o,o],
         [o,o,o,o,o,o,o,o,M,M,o],
         [o,o,o,M,o,o,o,o,o,M,o],
         [o,o,o,M,o,M,M,o,o,o,o],
         [o,o,o,o,M,M,M,M,o,o,o],
         [o,o,o,M,M,M,M,M,M,M,o],
         [o,o,o,M,M,o,M,M,M,o,o],
         [o,o,o,o,o,o,M,M,o,o,o],
         [o,M,o,o,o,M,o,o,o,o,o],
         [o,o,o,o,o,M,o,o,o,o,o]]

def continent_size(world, x, y)
   if world[y][x] != 'land'
      # Either it's water
      # or counted , so 'counted_land'
      return 0
   end

   # Count our first tile
   size = 1
   world[y][x] = 'counted_land'

   size += continent_size(world, x-1, y-1)
   size += continent_size(world, x, y-1)
   size += continent_size(world, x+1, y-1)
   size += continent_size(world, x-1, y)
   size += continent_size(world, x+1, y)
   size += continent_size(world, x-1, y+1)
   size += continent_size(world, x, y + 1)
   size += continent_size(world, x + 1, y + 1)
end

p continent_size(world,5,5)
p continent_size(world,10,5)
