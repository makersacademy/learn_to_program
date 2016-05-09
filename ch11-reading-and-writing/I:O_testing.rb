OFile.open(filename,'w') {|f| f.write test_string}

read_string = File.read filename
puts (read_string == test_string)

test_string = ['Give Quiche A Chance',
'Mutants Out!',
'Chameleonic Life-Forms, No Thanks',1]

p test_string.to_yaml