class Integer
  def shuffle
    shuf = self.sort_by{rand}
  end
  shuf
end
