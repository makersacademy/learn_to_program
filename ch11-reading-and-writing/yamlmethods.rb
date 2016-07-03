require 'yaml'

# First we define these fancy methods...

def yaml_save object, filename
    File.open filename, 'w' do |f|
    f.write(object.to_yaml)
    end
end

def yaml_load filename
    yaml_string = File.read filename
    YAML::load yaml_string
end

# ...and now we use these fancy methods.

test_array = ['Slick Shoes',
'Bully Blinders',
'Pinchers of Peril']

# Hey, time for some "me" trivia:
# In Portland once, I met the guy who
# played Troy's dad. True story.

filename = 'DatasGadgets.txt'

# We save it...
yaml_save test_array, filename

# We load it...
read_array = yaml_load filename

# We weep for the po' fools that ain't got it...
puts(read_array == test_array)
