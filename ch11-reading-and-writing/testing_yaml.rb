require 'yaml'

# first we define the methods for 'save' and 'load'
def yaml_save object, filename
  File.open filename, 'w' do |f|
    f.write(object.to_yaml)
  end
end

def yaml_load filename
  yaml_string = File.read filename

  YAML::load yaml_string
end

# and now we pass some things into those methods

test_array = ['Slick Shoes',
              'Bully Blinders',
              'Pinchers of Peril']

filename = 'DataGadgets.txt'

# We save it...
yaml_save test_array, filename

# We load it...
read_array = yaml_load filename

# We can test to see if it worked with this...
puts(read_array == test_array)

# I wanna see the contents of the file too...
puts(read_array)
