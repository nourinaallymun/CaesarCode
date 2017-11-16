puts "Entrez la phrase que vous souhaitez coder :"
test = gets.chomp

ascii = test.chars.map { |c| c.ord }
shifted = ascii.map { |c| c + 5 }
caesar_cipher = shifted.map { |c| c.chr }.join

puts caesar_cipher
