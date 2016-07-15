=begin
#11.3: Saving and Loading for Grown-Ups
filename = 'ListerQuote.txt'
test_string = "I promise that I swear absolutely that " +
              "I will never mention gazpacho soup again."

#Open file 'filename' and write, 'w', to it
File.open filename, 'w' do |f|
    f.write test_string
end

#Read from file 'filename' and store in var 'read_string'
read_string = File.read filename

puts(read_string == test_string)
=end

=begin
#11.4: YAML pt.I
require 'yaml'

test_array = ["Give Quiche A Chance",
              "Mutants Out!",
              "Chameleonic Life-Forms, No Thanks"]

#convert 'test_array' object to yaml supported string and store in var 'test_string'
test_string = test_array.to_yaml

filename = "RimmerTShirts.txt"

File.open filename, 'w' do |f|
    f.write test_string
end

read_string = File.read filename

#call 'load' method from YAML class to load the 'read_string' contents into 'read_array'
read_array = YAML::load read_string

puts(read_string == test_string)
puts(read_array == test_array)
=end

=begin
#11.6: YAML pt.II
require 'yaml'

#define method, using yaml, to write to a file.
def yaml_save(object,filename)
    File.open filename, 'w' do |f|
        f.write(object.to_yaml)
    end
end

#define method, using yaml, to read from a file
def yaml_load(filename)
    yaml_string = File.read filename
    
    YAML::load yaml_string
end

test_array = ['Slick Shoes',
              'Bully Blinders',
              'Pinchers of Peril']

filename = 'DatasGadgets.txt'

yaml_save(test_array,filename)

read_array = yaml_load(filename)

puts(read_array == test_array)
=end