def log string_description, &block

  puts prefix + "#{string_description} started"

  x = block.call

  puts prefix + "#{string_description} finished and returned #{x}"
end

  log 'addition' do
    log 'Hello' do
      log 'multiplication' do
        5 * 4
      end

      "Hello"
    end

    log 'division' do
      10 / 2
    end

    1 + 2
  end
