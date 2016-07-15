#=begin
#Generate image format files with random strings as names. For use with ch11 exercises
require 'yaml'

Dir.chdir '/home/ubuntu/workspace/ch11-reading-and-writing/storage/'

def yaml_save(object,filename)
    File.open filename, 'w' do |f|
        f.write(object.to_yaml)
    end
end

def yaml_load(filename)
    yaml_string = File.read filename
    
    YAML::load yaml_string
end

abc = ['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z']
type = ['.jpg','.JPG','.jpeg','.JPEG','.png','.PNG']
names = []
filename = 'camera_pics.txt'

20.times do
    pic = ' '
    rand(3..8).times do
        pic << abc[rand(abc.length-1)]
    end
    
    pic << type[rand(type.length-1)]
    pic.strip!
    names.push(pic)
end

yaml_save(names, filename)
#=end

