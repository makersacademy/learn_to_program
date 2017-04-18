# These are just to make the map easier for me to read.
# "M" is visually more dense than "o".
M = 'land'                                     # => "land"
o = 'water'                                    # => "water"
world = [
[o,o,o,o,o,o,o,o,o,o,o],                       # => ["water", "water", "water", "water", "water", "water", "water", "water", "water", "water", "water"]
[o,o,o,o,o,o,o,o,o,o,o],                       # => ["water", "water", "water", "water", "water", "water", "water", "water", "water", "water", "water"]
[o,o,o,o,o,o,o,o,o,o,o],                       # => ["water", "water", "water", "water", "water", "water", "water", "water", "water", "water", "water"]
[o,o,o,o,o,o,o,o,o,o,o],                       # => ["water", "water", "water", "water", "water", "water", "water", "water", "water", "water", "water"]
[o,o,o,o,o,o,o,o,o,o,o],                       # => ["water", "water", "water", "water", "water", "water", "water", "water", "water", "water", "water"]
[o,o,o,o,M,M,o,o,o,o,o],                       # => ["water", "water", "water", "water", "land", "land", "water", "water", "water", "water", "water"]
[o,o,o,o,M,o,o,o,o,o,o],                       # => ["water", "water", "water", "water", "land", "water", "water", "water", "water", "water", "water"]
[o,o,o,o,o,o,o,o,o,o,o],                       # => ["water", "water", "water", "water", "water", "water", "water", "water", "water", "water", "water"]
[o,o,o,o,o,o,o,o,o,o,o],                       # => ["water", "water", "water", "water", "water", "water", "water", "water", "water", "water", "water"]
[o,o,o,o,o,o,o,o,o,o,o],                       # => ["water", "water", "water", "water", "water", "water", "water", "water", "water", "water", "water"]
[o,o,o,o,o,o,o,o,o,o,o]                        # => ["water", "water", "water", "water", "water", "water", "water", "water", "water", "water", "water"]
]                                              # => [["water", "water", "water", "water", "water", "water", "water", "water", "water", "water", "water"], ["water", "water", "water", "water", "water", "water", "water", "water", "water", "water", "water"], ["water", "water", "water", "water", "water", "water", "water", "water", "water", "water", "water"], ["water", "water", "water", "water", "water", "water", "water", "water", "water", "water", "water"], ["water", "water", "water", "water", "water", "water", "water", "water", "water", "water", "water"], ["water", "water", "water", "water", "land", "land", "water", "water", "water", "water", "water"], ["water", "water", "water", "water", "land", "water", "water", "water", "water", "water", "water"], ["water", "water", "water", "water", "water", "water", "water", "water", "water", "water", "water"], ["water", "water", "water", "water", "water", "water", "water", "water", "water", "water", "water"], ["water", "water", "water", "water", "...
#
# world is a two dimensional array of subarrays. The above representation
# sets out the array in a way that makes it easy for a human to understand
# it in terms of map coordinates.
#
# Each row in the above is a subarray of elements.  The y argument identifies
# which subarray we want, i.e. the relevant row in the above grid, meaning
# y is equivalent to a y coordinate, reading from top to bottom with the
# first row being 0 on the y axis.  The x argument identifies which element
# INSIDE the subarray we want, i.e. the relevant column in the above grid,
# meaning x is equivalent to an x coordinate.
#
def continent_size world, x, y
if world[y][x] != 'land'                       # => false, true, true, true, false, true, true, true, true, true, true, false, true, true, true, true, true, true, true, true, true, true, true, true, true
# Either it's water or we already counted it,
# but either way, we don't want to count it now.
return 0                                       # => 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
end
# So first we count this tile...
size = 1                                       # => 1, 1, 1
world[y][x] = 'counted land'                   # => "counted land", "counted land", "counted land"
# Each time the program his a tile marked 'land' it updates that tile
# so it is no longer 'land' but 'counted land', meaning the next time the
# program hits that tile it will no longer be equal to 'land' and therefore
# is not double counted.

# ...then we count all of the neighboring eight tiles
# (and, of course, their neighbors by way of the recursion).
#
# The best way to think of this is that each time the program hits a land tile
# it starts spiraling around that tile until it finds another land tile and
# each time it finds another land tile it starts again from that second land tile
# and so on and son on until it has counted all the land tiles and their neighbors
# that joined the starting tile.
#
size = size + continent_size(world, x-1, y-1)  # => 1, 1, 1
size = size + continent_size(world, x , y-1)   # => 1, 1, 1
size = size + continent_size(world, x+1, y-1)  # => 1, 1, 1
size = size + continent_size(world, x-1, y )   # => 1, 1, 3
size = size + continent_size(world, x+1, y )   # => 1, 1, 3
size = size + continent_size(world, x-1, y+1)  # => 1, 1, 3
size = size + continent_size(world, x , y+1)   # => 1, 2, 3
size = size + continent_size(world, x+1, y+1)  # => 1, 2, 3
size                                           # => 1, 2, 3
end                                            # => :continent_size
puts continent_size(world, 5, 5)               # => nil

# >> 3
