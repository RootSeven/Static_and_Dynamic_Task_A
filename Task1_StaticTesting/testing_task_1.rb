class CardGame

  # No initialize function

    def checkforAce(card) # Should be in snake case (check_for_ace)
      if card.value = 1 # comparison operator (==) needed, not assignment (=)
        return true
      else
        return false
      end
    end
  
    dif highest_card(card1 card2) # "dif" should be "def"; comma needed between card1 and card2
    if card1.value > card2.value # all lines in this method should be indented one
      return card # should be card1, not card
    else
      return card2
    end
  end
  end # This end should be removed as it doesn't match with any keyword
  
  def self.cards_total(cards)
    total # total needs to be initialized, i.e. total = 0
    for card in cards
      total += card.value
      return "You have a total of" + total # Return should be outside of for loop, after the next end; there should be a space at the end of the string
    end
  end

  # Needs one more end to end the class definition