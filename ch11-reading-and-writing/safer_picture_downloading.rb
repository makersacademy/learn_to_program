# your code here
=begin
Safer picture downloading. Adapt the picture-downloading/file-renaming
program to your computer by adding some safety features to make sure
you never overwrite a file. A few methods you might find useful are
File.exist? (pass it a filename, and it will return true or false) and exit (like if
return and Napoleon had a baby—it kills your program right where it stands;
this is good for spitting out an error message and then quitting).
=end
# This is where she stores her pictures before
# she gets her YAML on and moves them to the server.
# Just for my own convenience, I'll go there now.
#Dir.chdir '/Photos/PictureInbox'
# First we find all of the pictures to be moved.

pic_names = Dir["**/*\.{jpg,JPG}"]

puts 'What would you like to call this batch?'

batch_name = gets.chomp

puts

print "Downloading #{pic_names.length} files: "

# This will be our counter. We'll start at 1 today,

# though normally I like to count from 0.

pic_number = 1

pic_names.each do |name|

print '.' # This is our "progress bar".

# Make sure we don't save over another file!!



new_name = if pic_number < 10

"#{batch_name}0#{pic_number}.jpg"

else

"#{batch_name}#{pic_number}.jpg"

end

i=0
while File.exist?(new_name)
    puts "That file already exists, renaming new file."
    new_name = new_name[0..-5] + (i+=1).to_s + ".jpg"
end
i=0



# This renames the picture, but since "name"
# has a big long path on it, and "new_name"
# doesn't, it also moves the file to the
# current working directory, which is now
# Katy's PictureInbox folder.
# Since it's a *move*, this effectivey
# downloads and deletes the originals.
# And since this is a memory card, not a
# hard drive, each of these takes a second
# or so; hence, the little dots let her
# know that my program didn't hose her machine.
# (Some marriage advice from your favorite
# author/programmer: it's all about the
# little things.)
=begin
The first time I wrote
this program, I forgot
that little line that
increments the
counter. What
happened? It copied
every picture to the
same new filename...
over the previous
picture! This
effectively deleted
every picture except
for the last one to be
copied. Good thing I
always, always,
always make
backups. Because,
you know, the thing
about computers....
=end

# Now where were we? Oh, yeah...

File.rename name, new_name

# Finally, we increment the counter.

pic_number = pic_number + 1

end

puts # This is so we aren't on progress bar line.

puts 'Done, cutie!'
=begin
Nice! Of course, the full program I wrote for her also downloads the movies,
deletes the thumbnails from the camera (since only the camera can use them),
extracts the time and date from the actual .jpg or .avi file, and renames the file
using that. It also makes sure never to copy over an existing file. Yep, it’s a
pretty fancy program, but that’s for another day.
=end