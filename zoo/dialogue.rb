module Dialogue

  def say_something(word)
    puts "#{word}"
  end

  def get_answer
    STDIN.gets.chomp()
  end

end
