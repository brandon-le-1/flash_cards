class Turn

    def initialize(string, card)
        @card = card
        @guess = string
    end

    def card()
        @card
    end

    def guess()
        @guess
    end

    def correct?()
        if @guess == card.answer
            @correct = true
        else
            @correct = false
        end
    end

    def feedback()
        if @correct == true
            @feedback = 'Correct!'
        else
            @feedback = 'Incorrect.'
        end
    end
end