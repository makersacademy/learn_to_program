require 'find'
require 'yaml'

mp3_file_paths = []
Find.find('/Users/Alex_Swann') do |path|
  mp3_file_paths << path if path =~ /.*\.mp3$/
end


puts mp3_file_paths.map{|x| x.split('/').last}.shuffle.to_yaml
