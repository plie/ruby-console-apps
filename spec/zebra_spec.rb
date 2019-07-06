require_relative '../zoo/zebra.rb'
require_relative '../zoo/dialogue.rb'
require_relative '../spec/helpers.rb'

RSpec.describe 'the zebra' do

  let(:zebra) { Zebra.new }

  it 'walks like a zebra' do
    open_io
    zebra.walk('yo baby I am a zebra')
    expect(io_out).to eq('yo baby I am a zebra')
  end

  it 'talks like a zebra' do
    open_io
    zebra.speak('howdy I am a zebra!')
    expect(io_out).to eq('howdy I am a zebra!')
  end

  it 'eats like a zebra' do
    open_io
    zebra.eat('I love trees too, says zebra')
    expect(io_out).to eq('I love trees too, says zebra')
  end

end
