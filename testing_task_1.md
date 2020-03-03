### Testing task 1:

# Carry out static testing on the code below.
# Comment on any errors that you see below.
```ruby

#Need to require in card.rb
class CardGame
  #Bad practice to capitalise 'G'

  def checkforAce(card)
    #should have underscores and no caps - not a bug just bad practice
    if card.value = 1
      #should be double equals (==)
      # are ace's definitely 1? not 11 or wild?
      # there's no accounting here for non-numeric cards, unless values are assumed (eg Blackjack values)
      return true
    else
      return false
    end
  end

  dif highest_card(card1 card2)
  #dif --> def, missing comma in between arguments
  if card1.value > card2.value
    return card
    # should return card1 here
  else
    return card2
  end
end
end
# one too many ends

def self.cards_total(cards)
  total
# total needs to be initialised with a value (of 0 presumably)
  for card in cards
    total += card.value
    return "You have a total of" + total
    #total should be concatenated into string using {#...}
    #also this return statement should be outside the for loop
  end
end

#No end here to close the class.
```
