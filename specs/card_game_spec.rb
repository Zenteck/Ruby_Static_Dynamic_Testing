require_relative('../card_game.rb')
require_relative('../card.rb')
require('minitest/autorun')
require('minitest/reporters')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class Cardgametest < Minitest::Test

  def setup
    @card1 = Card.new('diamonds', 7)
    @card2 = Card.new('clubs', 10)
    @card3 = Card.new('hearts', 'ace')
    @card4 = Card.new('spades', 1)
  end

  def test_check_for_ace_success
    card = Cardgame.new.check_for_ace(@card4)
    assert_equal(true, card)
  end

  def test_check_for_ace_false
    card = Cardgame.new.check_for_ace(@card1)
    assert_equal(false, card)
  end

  def test_highest_card
    cards = Cardgame.new.highest_card(@card1, @card2)
    assert_equal(@card2, cards)
  end

  def test_cards_total
    game = Cardgame.cards_total([@card1, @card4])
    assert_equal("You have a total of 8", game)
  end

end
