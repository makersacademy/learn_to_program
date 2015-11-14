require 'yaml'

test_array = ['true',
              'Mutants Out!',
              'Chameleonic Life-forms, No Thanks']

test_string = test_array.to_yaml

filename = 'RimmerTShirts.txt'

File.open filename, 'w' do |i|
  i.write test_string
end

read_string = File.read filename

read_array = YAML::load read_string

puts read_string
p read_array[0]
