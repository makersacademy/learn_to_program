require 'colorize'


def transform_land?                                                             #return true or false, to decide if the tested square will turn into land 25% seems optimal for a ~50size map, single seed.
  rand < 0.25
end


def growth_points(point,map)                                                    #return the 8 adjacent square
 new_points = Array.new
 
  (-1..1).each do |x|
    (-1..1).each do |y|
      new_points << [x+point[0],y+point[1]] if x+point[0] < map.length && y+point[1] < map.length && x+point[0] >= 0 && y+point[1] >= 0
    end
  end
  
  new_points - [point]                                                          
end  


def grower(tilemap,pos)
  land = '██'
  water = '~~'
  
  pos.each do |point|
    if transform_land? && tilemap[point[1]][point[0]] == water
			tilemap[point[1]][point[0]] = land                                        
      grower(tilemap,growth_points(point,tilemap))                              #does not know about its 'growth direction', will explore 360°
    end
  end
  
end


def map_printer(map)
  
  map.each do |row|
    puts row.join
  end
  puts "\n"
  
end


def prettify(land_seed,tiled_map)                                              #mark seed_locations, turn the water blue and make everything impossible to understand.
  tiled_map.each_index do |y|
    tiled_map[y].each_index do |x|
      case tiled_map[y][x]
      when '~~' then tiled_map[y][x] = '~~'.blue.on_light_blue
      when '██' then tiled_map[y][x] = '██'.light_yellow.on_yellow
      end
    end
  end
  
  land_seed.each do |point|                                                     
  	tiled_map[point[1]][point[0]] = '██'.yellow.on_yellow
	end
	
end


#based on a idea got while chatting on slack. map_size = number, land seed = array of coords f.ex [[1,1], [5,4], [5,0]]. Code works, but hard to follow, sorry.
def map_generation(map_size,land_seed)                                          
  water = '~~' 
  tiled_map = Array.new(map_size) {Array.new(map_size,water)}
	srand

  while tiled_map.flatten.all? {|tile| tile == water}                           #reject any map full of water
    grower(tiled_map,land_seed)
  end
  
  prettify(land_seed,tiled_map)
  map_printer(tiled_map)
end


######example
#size = 50
#map_generation(size,[[rand(0...size),rand(0...size)]])                         #put a seed in a random position
######