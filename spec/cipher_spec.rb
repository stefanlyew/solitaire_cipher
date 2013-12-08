require 'spec_helper'
require 'solitaire_cipher/cipher'

describe SolitaireCipher::Cipher do
  let(:message) { "Code in Ruby, live longer!2"  }
  let(:cipher) { SolitaireCipher::Cipher.new(message) }

  it "takes a message as a parameter" do
    expect(cipher.message).to eq message
  end

  describe "#letterize" do
    context "when the number of letters is divisible by 5" do
      it "strips non-letter characters and upcases them" do
        expect(cipher.letterize).to eq "CODEINRUBYLIVELONGER"
      end
    end

    context "when the letters are not neatly divisible by 5" do
      it "pads the remainder with X's" do
        message =  "Code in Ruby, live long"
        cipher = SolitaireCipher::Cipher.new(message)
        expect(cipher.letterize).to eq "CODEINRUBYLIVELONGXX"
      end
    end
  end

  describe '#map_to_numbers' do
    it "splits a string into an array of its letters" do
      expect(cipher.map_to_letters).to eq [3, 15, 4, 5, 9, 14, 18, 21, 2, 25, 12, 9, 22, 5, 12, 15, 14, 7, 5, 18]
    end
  end
end
