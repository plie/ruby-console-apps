require_relative '../zoo/dialogue.rb'
require_relative 'helpers'

RSpec.configure do |c|
  c.include Helpers
end

RSpec.describe Dialogue do

  def open_io
    $stdout = StringIO.new
  end

  def io_out
    $stdout.rewind
    $stdout.gets.strip
  end

  def confirm_output(text)
    open_io
    dialogue.say_something(text)
    expect(io_out).to eq(text)
  end

  # def capture_input   # for other classes
  #   $stdin.gets.chomp
  # end

  def input(text)
    $stdin = StringIO.new(text)
  end

  def purge_input_io
    $stdin = STDIN
  end

  # let(:dialogue) { Dialogue.new } # no longer a class

  context 'when communicating with command line' do
    it 'tests the input sent is what is received' do
      desired_text = 'honey do'
      input(desired_text)
      expect(Dialogue.get_answer).to eq(desired_text)   # or expect(capture_input) for other classes
      purge_input_io
    end
  end

  it 'expect help to be available' do
    expect(help).to be :available
  end

end



  # def confirm_input(text)
  #   open_io
  #   dialogue.get_answer # this is having me enter text on the command line. Need to change this somehow.
  #   puts text
  #   io_out
  #   expect(io_out).to eq(text)
  # end

  #   it 'says what I tell it to say' do
  #     confirm_output('jo bashfull')
  #     # there is a flaw here. I want the computer to test its own output through that channel. Instead it is having me enter text in mid-test
  #   end

  #   it 'receives correct input from command line' do
  #     confirm_input('Baby Boy!')
  #   end
  # end






# See: this
# https://stackoverflow.com/questions/17258630/how-do-i-write-an-rspec-test-for-a-ruby-method-that-contains-gets-chomp

# describe 'capture_name' do
#   before do
#     $stdin = StringIO.new("James T. Kirk\n")
#   end

#   after do
#     $stdin = STDIN
#   end

#   it "should be 'James T. Kirk'" do
#     expect(capture_name).to be == 'James T. Kirk'
#   end
# end

