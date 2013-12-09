#TODO Key the Deck like James Bond

module SolitaireCipher
  class Deck
    attr_accessor :deck

    def initialize
      #A and B are Jokers
      @deck = (1..52).to_a << 'A' << 'B'
    end

    def move card
      index = @deck.index(card)
      if index == @deck.length - 1
        #major bug fixed here
        @deck.insert(1,@deck[index]).pop
      else
        @deck[index], @deck[index + 1] = @deck[index + 1], @deck[index]
      end
      @deck
    end

    def triple_cut
       a = @deck.index( 'A' )
       b = @deck.index( 'B' )
       #make sure joker is correctly on top of other
       a, b = b, a if a > b
       @deck.replace( [ @deck[(b + 1)..-1],
                        @deck[a..b],
                        @deck[0...a] ].flatten )
    end

    def count_cut
      if @deck[@deck.length-1].is_a? String
        bottom_value = 53 - 1
      else
        bottom_value = @deck[@deck.length-1] - 1
      end
      cut = @deck.slice!(0..bottom_value)
      @deck.insert(@deck.length-1, cut).flatten!
      @deck
    end

    def output_letter
      if @deck.first.is_a? String
        value = 53
      else
        value = @deck.first
      end
      card = @deck[value] 
      if card
        card = 53 if card.is_a? String
        card-= 26 if card > 26
        letter = ALPHABET.invert[card]
      end
      return letter
    end

  end
end
