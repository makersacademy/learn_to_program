require 'yaml'

File.open filename, 'w' do |f| f.write(object.to_yaml)
end end
def yaml_load filename
yaml_string = File.read filename
        YAML::load yaml_string
end
     