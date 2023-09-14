@cypher = {
  '.-' => 'A',
  '-...' => 'B',
  '-.-.' => 'C',
  '-..' => 'D',
  '.' => 'E',
  '..-.' => 'F',
  '--.' => 'G',
  '....' => 'H',
  '..' => 'I',
  '.---' => 'J',
  '-.-' => 'K',
  '.-..' => 'L',
  '--' => 'M',
  '-.' => 'N',
  '---' => 'O',
  '.--.' => 'P',
  '--.-' => 'Q',
  '.-.' => 'R',
  '...' => 'S',
  '-' => 'T',
  '..-' => 'U',
  '...-' => 'V',
  '.--' => 'W',
  '-..-' => 'X',
  '-.--' => 'Y',
  '--..' => 'Z',
  '.----' => '1',
  '..---' => '2',
  '...--' => '3',
  '....-' => '4',
  '.....' => '5',
  '-....' => '6',
  '--...' => '7',
  '---..' => '8',
  '----.' => '9',
  '-----' => '0',
  '.-.-.-' => '.',
  '--..--' => ',',
  '..--..' => '?',
  '-..-.' => '/',
  '.--.-.' => '@'
}

#  Decoding
def decode_character(str)
  @cypher[str]
end

def decode_word(str)
  word = str.split
  word.map! { |character| decode_character(character) }
  word.join
end

def decode_message(str)
  message = str.split('   ')
  message.map! { |word| decode_word(word) }
  message.join(' ')
end

# Encoding
def encode_character(str)
  @cypher.key(str.upcase)
end

def encode_word(str)
  word = str.split('')
  word.map! { |character| encode_character(character) }
  word.join(' ')
end

# puts decode_character('.....') # Output -> 5
# puts decode_word('-. .- -- .') # Output -> NAME
# puts decode_message('-- -.--   -. .- -- .') # Output -> MY NAME
# message = '.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...'
# puts decode_message(message)
puts encode_character('a') # Output -> .-
puts encode_word('name') # Output -> -. .- -- .
