require 'yaml'

numberArray = ["andy, 'to be or not to be'", '37',[26, "26"]]

File.open "names.txt", 'w' do |x|
  x.write(numberArray.to_yaml)
end


returnedArray = File.read('names.txt')
y = YAML::load returnedArray

bool = numberArray == y
puts bool
