def caesar_cipher(string, shift = 5)
  alphabet  = Array('a'..'z')
  non_caps  = Hash[alphabet.zip(alphabet.rotate(shift))]

  alphabet = Array('A'..'Z')
  caps     = Hash[alphabet.zip(alphabet.rotate(shift))]

  alphabet = Array('!'..'?')
  symbol     = Hash[alphabet.zip(alphabet.rotate(shift))]

  encrypter = symbol.merge(non_caps.merge(caps))

  string.chars.map { |c| encrypter.fetch(c, c) }
end

  alphabet  = gets.chomp
p caesar_cipher(alphabet).join
