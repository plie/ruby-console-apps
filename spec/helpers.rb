module Helpers

  def help
    :available
  end

  def open_io
    $stdout = StringIO.new
  end

  def io_out
    $stdout.rewind
    $stdout.gets.strip
  end

  def confirm_output(text)
    open_io
    Dialogue.new.say_something(text)
    expect(io_out).to eq(text)
  end

  def confirm_input(text)
    open_io
    Dialogue.new.get_answer
    puts text
    io_out
    expect(io_out).to eq(text)
  end

end
