$log_levl = 0

def log desc, &block

indent = " "*$log_levl
  puts indent + "Starting '#{desc}'..."
  $log_levl += 1
  to_return = block.call
  $log_levl -= 1
  puts indent + "Finished '#{desc}', it returned '#{to_return.to_s}'"

end


log 'outer block' do
  log 'some little block' do
    log 'teeny-tiny block' do
      'lOtS oF lOVe'.downcase
    end

    7 * 3 * 2
  end

  log 'yet another block' do
    '!doof naidnI evol I'.reverse
  end

  '0' == "0"
end
