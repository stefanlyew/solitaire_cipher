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
        @deck.unshift(@deck[index]).pop
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
      bottom_value = @deck[@deck.length-1] - 1
      cut = @deck.slice!(0..bottom_value)
      @deck.insert(@deck.length-1, cut).flatten!
      @deck
    end

    def output_letter
      value = @deck.first
      card = @deck[value] unless @deck[value].is_a? String
      if card
        card-= 26 if card > 26
      end
      ALPHABET.invert[card]
    end

  end
end
