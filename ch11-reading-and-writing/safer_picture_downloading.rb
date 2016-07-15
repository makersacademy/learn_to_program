
SOURCE_DIR = '/users/newuser/documents/wallpapers/'
DESTINATION_PATH = '/Users/newuser/Desktop/Makers/precourse/week2/' +
                   'learn_to_program/scrap_work/images/'

def copy_files(file_name)
  # Main app for executions from client side
  arr = get_pictures
  puts arr
  copier(arr, file_name)
end

def get_pictures()
  arr = []
  if(File.directory?(SOURCE_DIR)) # Check if dir exists
    Dir.chdir SOURCE_DIR
    arr = Dir.glob("*.[Jj][Pp][Gg]")
  end
  return arr
end

def copier(arr, file_name)
  file_num = 0
  arr.each do |old_name|
    file_num += 1
    if(File.exist? DESTINATION_PATH + "#{file_name}_#{file_num}") == false
      File.rename(SOURCE_DIR + old_name,
                  DESTINATION_PATH + "#{file_name}_#{file_num}.jpg")
    end
  end
end

file_name = 'wallpaper-test' # Set required file name
copy_files(file_name)
