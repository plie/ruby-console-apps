require_relative '../zoo/animal.rb'
require_relative '../zoo/dialogue.rb'
require_relative '../spec/helpers.rb'

RSpec.describe 'Animal' do

  let(:animal) { Animal.new }
  
  context 'the animals can do things' do
    it 'talks' do
      open_io
      animal.speak('woof!')
      expect(io_out).to eq('woof!')
    end

    it 'walks' do
      open_io
      animal.walk('I am walking on 4 legs!')
      expect(io_out).to eq('I am walking on 4 legs!')
    end

    it 'eats' do
      open_io
      animal.eat('yum yum nam nam..')
      expect(io_out).to eq('yum yum nam nam..')
    end
  end

end






  # context 'when new animal is created' do
  #   # it 'creates new instance of an animal'
  # end

# RSpec.configure do |c|
#   c.include Helpers
# end

  # context 'with helpers' do
  #   it 'expect help to be available' do
  #     expect(help).to be :available
  #   end
  # end
  # context 'when you get to tell it what to do' do

  #   it 'says what you tell it to say' do
  #     # puts 'what should the animal say?'
  #     open_io
  #     # puts 'Growl!'
  #     answer = animal.get_answer
  #     # puts 'Growl!'
  #     animal.speak(answer)
  #     io_out
  #     expect(io_out).to eq(answer)
  #   end

  #   it 'eats what you tell it to eat' do
  #     # puts 'describe your animal eating'
  #     open_io
  #     answer = animal.get_answer
  #     animal.eat(answer)
  #     io_out
  #     expect(io_out).to eq(answer)
  #   end

  #   it 'walks how you want it to walk' do
  #     # puts 'describe your animal walking'
  #     open_io
  #     answer = animal.get_answer
  #     animal.walk(answer)
  #     io_out
  #     expect(io_out).to eq(answer)
  #   end
  # end
