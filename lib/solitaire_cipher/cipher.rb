module SolitaireCipher
  class Cipher
    attr_reader :message

    ALPHABET = Hash[('A'..'Z').to_a.zip (1..26)]

    def initialize message
      @message = message
    end

    def letterize
      clean = @message.gsub(/[^a-z]/i, '').upcase
      pad = 'X' * ((5 - clean.length % 5) % 5)
      clean << pad
      clean
      #clean.scan(/.{5}|.+/).join(" ")
    end

    def map_to_numbers
      letterize.split(//).map { |letter| ALPHABET[letter] }
    end

    def map_to_number
    end
  end
end
