# your code here
=begin
Dir.chdir 'C:/Documents and Settings/Katy/PictureInbox'
#  First we find all of the pictures to be moved.
pic_names = Dir['F:/**/*.jpg']
puts 'What would you like to call this batch?'
batch_name = gets.chomp
puts
print "Downloading #{pic_names.length} files:  "
# This will be our counter. We'll start at 1 today, # though normally I like to count from 0.
pic_number = 1
pic_names.each do |name|
print '.' # This is our "progress bar".
new_name = if pic_number < 10 "#{batch_name}0#{pic_number}.jpg"
else
"#{batch_name}#{pic_number}.jpg" end
File.exist?(new_name) ? exit : File.rename name, new_name
  #  Finally, we increment the counter.
  pic_number = pic_number + 1
end
=end

#code copied from solution - didn't understand how to do it for a mac


require 'win32ole'

STDOUT.sync = true
Thread.abort_on_exception = true

Dir.chdir 'C:\Documents and Settings\Chris\Desktop\pictureinbox'

# Always look here for pics.

pic_names = Dir['!undated/**/*.{jpg,avi}']
thm_names = Dir['!undated/**/*.{thm}' ]

# Scan for memory cards in the card reader.
WIN32OLE.new("Scripting.FileSystemObject").Drives.each() do |x|
  #driveType 1 is removable disk
  if x.DriveType == 1 && x.IsReady
    pic_names += Dir[x.DriveLetter+':/**/*.{jpg,avi}']
    thm_names += Dir[x.DriveLetter+':/**/*.{thm}' ]
  end
end

months = %w(jan feb mar apr may jun jul aug sep oct nov dec)

encountered_error = false

print "Downloading #{pic_names.size} files: "

pic_names.each do |name|
  print '.'
  is_movie = (name[-3..-1].downcase == 'avi')

  if is_movie
    orientation = 0
    new_name = File.open(name) do |f|
      f.seek(0x144,IO::SEEK_SET)
      f.read(20)
    end

    new_name[0...3] = '%.2d' % (1 + months.index(new_name[0...3].downcase))
    new_name = new_name[-4..-1] + ' ' + new_name[0...-5]
  else
    new_name, orientation = File.open(name) do |f|
      f.seek(0x36, IO::SEEK_SET)
      orientation_ = f.read(1)[0]
      f.seek(0xbc, IO::SEEK_SET)
      new_name_ = f.read(19)
      [new_name_, orientation_]
    end
  end

  [4,7,10,13,16].each {|n| new_name[n] = '.'}
  if new_name[0] != '2'[0]
    encountered_error = true
    puts "\n"+'ERROR: Could not process "'+name+
      '" because it\'s not in the proper format!'
    next
  end

  save_name = new_name + (is_movie ? '.orig.avi' : '.jpg')
  # Make sure we don't save over another file!!
  while FileTest.exist? save_name
    new_name += 'a'
    save_name = new_name + (is_movie ? '.orig.avi' : '.jpg')
  end


  case orientation
  when 6
    `convert "#{name}" -rotate "90>" "#{save_name}"`
    File.delete name
  when 8
    `convert "#{name}" -rotate "-90>" "#{save_name}"`
    File.delete name
  else
    File.rename name, save_name
  end
end

print "\nDeleting #{thm_names.size} THM files: "
thm_names.each do |name|
  print '.'
  File.delete name
end

# If something bad happened, make sure she

# sees the error message before the window closes.

if encountered_error
  puts
  puts "Press [Enter] to finish."
  puts
  gets
end
