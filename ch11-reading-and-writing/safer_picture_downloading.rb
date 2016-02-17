# Start implementing pseudo coding as a routine

# source derectory: Desktop
# destination directory: desktop_texts

# This programme:
# - finds any .text or .txt files in the Desktop
# - renames the file with a format of "batch_name-number(000).txt"
# - search for files with the same name within the destination
# - moves each renamed files to the desination ONLY IF there's no file with
#   the same name

# 1. moves to the destination as the current working directory
Dir.chdir "/Users/misaogura/Desktop/desktop_texts"

# 2. creates a list of .text or .txt files in the Desktop
text_list = Dir["/Users/misaogura/Desktop/*.{text,txt}"]
# -> working directoly not changed, just went to the source to fetch a list

# 3. takes user input for the batch name
puts "What would you like to call this batch?"
batch_name = gets.chomp

file_number = 0
skip_number = 0
# starting the file counter

puts
puts "Renaming and moving #{text_list.length} files. Please wait."
# letting the user know how namy files are being renamed & moved

# 4. renames each file in the list with "batch_name-number.txt"
text_list.each do |file|
  print "."
  if file_number < 10
    new_name = "#{batch_name}-00#{file_number}.txt"
  elsif file_number < 100
    new_name = "#{batch_name}-0#{file_number}.txt"
  else
    new_name = "#{batch_name}-#{file_number}.txt"
  end

  if File.file?(new_name)
    puts "\nThe file #{new_name} already exists, skipped to the next available file."
    file_number += 1
    skip_number += 1
    next
    # if there's a file with the same name already exists,
    # it leaves the file name unchanged, unmoved and moves
    # on to the next file in the list

  else
    File.rename file, new_name
    file_number += 1
  end
end

def duplicate num
  if num == 1
    "duplicate"
  else
    "duplicates"
  end
end

puts
puts "File moved: #{file_number - skip_number}"
puts "We found #{skip_number} #{duplicate skip_number}." if file_number > 1
