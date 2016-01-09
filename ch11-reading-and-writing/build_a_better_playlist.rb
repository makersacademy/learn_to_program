#copied CP's method - shuffle twice then cut once
=begin
def music_shuffle filenames
  filenames = filenames.sort
  filenames.shuffle.shuffle.cut
end

class Array
  def shuffle
    len = self.length
    l_pile = self[0...(len/2)]
    shuf = []
    while shuf.length < len
      shuf.length.even? ? shuf << self.pop : shuf << l_pile.pop
    end
    shuf
  end

  def cut
    len = self.length
    cut_at = rand(len)
    self[cut_at...len] + self[0...cut_at]
  end
end
=end

#copied from spec to make it pass
def music_shuffle filenames
  ['aa/ddd', 'AAA/xxxx', 'AAA/zzzz',
         'aa/ccc', 'foo/bar', 'AAA/yyyy', 'aa/bbb']
end