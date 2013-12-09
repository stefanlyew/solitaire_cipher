# SolitaireCipher

This is an implementation of Bruce Schneier's <a href="http://en.wikipedia.org/wiki/Solitaire_(cipher)">Solitaire Cipher</a>

It is the first problem on [Ruby Quiz](http://rubyquiz.com/quiz1.html)

## Usage

To encrypt a message:
rake encrypt
enter your message at prompt

To decrypt a code:
rake decrypt
enter your code at prompt

To run tests:
rake spec

the main files are
lib/solitaire_cipher/cipher.rb
and
lib/solitaire_cipher/deck.rb

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
