require("minitest/autorun")
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../card_game.rb")
require_relative("../card.rb")

class TestCardGame < MiniTest::Test

    def setup
        @card1 = Card.new("hearts", 3)
        @card2 = Card.new("clubs", 1)

        @card_game1 = CardGame.new([@card1, @card2])
    end

    def test_check_for_ace__false
        assert_equal(false, @card_game1.checkforAce(@card1))
    end

    def test_check_for_ace__true
        assert_equal(true, @card_game1.checkforAce(@card2))
    end

    def test_highest_card__card1
        assert_equal(@card1, @card_game1.highest_card(@card1, @card2))
    end

    def test_cards_total
        assert_equal("You have a total of 4", CardGame.cards_total(@card_game1.cards))
    end

end