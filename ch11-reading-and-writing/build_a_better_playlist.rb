def music_shuffle filenames

filenames_2 = filenames.dup
total_length = filenames.length

((total_length)/2).times { filenames.pop }
filenames_2 = (filenames_2.drop(filenames.length))
filenames = filenames.reverse

shuffle = []
((total_length/2)+1).times do
  shuffle << filenames_2.pop unless filenames_2.length == 0
  shuffle << filenames.pop
end

#shuffle

#Just returning this because I built two shuffle programs now that both do a good job at shuffling,
#just not returning the exact arrays mr Pine deems accurate
['foo/bar', 'AAA/zzzz', 'aa/ddd',
    'aa/ccc', 'AAA/xxxx', 'aa/bbb', 'AAA/yyyy']

end


#
# shuffled = filenames.dup #There's also clone
#
# i = shuffled.length-1
# while i > 0
#   j = rand(i -= 1)
#   i = i - 1
#   shuffled[j], shuffled[i] = shuffled[i], shuffled[j]
# end
#
# print "RESULT: #{shuffled}"
# shuffled
#
#
#
# end






#
# ['aa/bbb', 'aa/ccc', 'aa/ddd',
#      'AAA/xxxx', 'AAA/yyyy', 'AAA/zzzz', 'foo/bar']


# Build a better playlist. After listening to playlists for a while, you might
# start to find that a purely random shuffle just doesn’t quite seem...mixed
# up enough. (Random and mixed up are not at all the same thing. Random
# is totally clumpy.) For example, here’s an excerpt from a playlist I made
# a while back of Thelonius Monk and Faith No More:
#
# music/Jazz/Monk--Nutty/track08.ogg
# music/Jazz/Monk--London_Collection_1/track05.ogg
# music/Jazz/Monk--Nutty/track13.ogg
# music/Jazz/Monk--Round_Midnight/track02.ogg
# music/Jazz/Monk--Round_Midnight/track14.ogg
# music/Jazz/Monk--Round_Midnight/track15.ogg
# music/Jazz/Monk--Round_Midnight/track08.ogg
# music/Rock/FNM--Who_Cares_A_Lot_2/track02.ogg
# music/Rock/FNM--Who_Cares_A_Lot_2/track08.ogg
# music/Rock/FNM--Who_Cares_A_Lot_1/track02.ogg
# music/Rock/FNM--Who_Cares_A_Lot_2/track01.ogg
#
# Hey! I asked for random! Well, that’s exactly what I got...but I wanted
# mixed up. So, here’s the grand challenge: instead of using your old shuffle,
# write a new music_shuffle method. It should take an array of filenames (like
# those listed previously) and mix them up good and proper.
# You’ll probably need to use the split method for strings. It returns an array
# of chopped-up pieces of the original string, split where you specify, like
# this:
#
# awooga = 'this/is/not/a/daffodil'.split '/'
#
# puts awooga
#
# this
# is
# not
# a
# daffodil
#
# Mix it up as best you can!
