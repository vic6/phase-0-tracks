require_relative 'word_game'

describe Game do 
  let(:new_game) { Game.new()}

  it "checks to see if input is not a number" do
    expect(new_game.guess_check('5')). to eq false
  end

  it ""

  it 
end