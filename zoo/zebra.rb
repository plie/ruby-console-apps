require_relative 'animal.rb'

class Zebra < Animal

  def speak(zebra = 'a very toothy Whinny!')
    super(zebra)
  end

  def walk( zebra = 'I am a zebra galloping!')
    super(zebra)
  end

  def eat(zebra = 'I love grass! Yummy')
    super(zebra)
  end

end
