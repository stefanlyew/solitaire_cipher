module SolitaireCipher
  ALPHABET = Hash[('A'..'Z').to_a.zip (1..26)]
  class Cipher
    attr_reader :message


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

    def map_to_numbers string
      string.split(//).map { |letter| ALPHABET[letter] }
    end

    def combine_message message, keystream
      combined = [message, keystream]
      combined = combined.transpose.map {|x| x.reduce(:+)}
      combined.map { |x| (x>26) ? (x-26) : x }
    end

    def map_to_letters integers
      numbers = ALPHABET.invert
      integers = integers.map { |integer| numbers[integer] }
      integers.join
    end
  end
end
