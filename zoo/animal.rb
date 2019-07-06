require_relative 'dialogue.rb'

class Animal
  include Dialogue

  def speak(sound)
    say_something(sound)  
  end

  def walk(motion)
    say_something(motion)
  end

  def eat(eating)
    say_something(eating)
  end

end