require 'fileutils'

my_dir = Dir["/home/octo/Pictures/*.png"]
my_dir.each do |filename|
  name = File.basename('filename', '.png')[0,4]
  dest_folder = "/home/octo/screenshot/*.png"
  FileUtils.cp(filename, dest_folder)
end
