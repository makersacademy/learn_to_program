require 'yaml'

def yaml_save object, filename
  File.open filenname, 'w' do |f|
    f.write(object.to_yaml)
  end
end

def yamil_load filename
  yaml_string = File.read filename
  
  YAML::load yaml_string
end

test_array = ['Slikc Shoes',
              'Bully Blinders',
              'Pinchers of Peril']

filename = 'DatasGadgets.txt'

yaml_save test_array. filemane

read_array = yamil_load filename

puts (read_array == test_array)