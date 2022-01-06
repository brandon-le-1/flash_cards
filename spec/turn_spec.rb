require './lib/card'
require './lib/turn'

RSpec.describe Turn do
    it 'exists' do
        card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
        turn = Turn.new("Juneau", card)
    
        expect(turn).to be_instance_of(Turn)
    end

    it 'has a guess' do
        card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
        turn = Turn.new("Juneau", card)
    
        expect(turn.guess).to eq("Juneau")
    end

    it 'handles correct answers properly' do
        card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
        turn = Turn.new("Juneau", card)

        expect(turn.correct?).to eq(true)
        expect(turn.feedback).to eq ('Correct!')
    end

    it 'handles incorrect answers properly' do
        card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
        turn = Turn.new("Obama", card)

        expect(turn.correct?).to eq(false)
        expect(turn.feedback).to eq ('Incorrect.')
    end
end
