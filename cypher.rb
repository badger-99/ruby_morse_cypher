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
def decode_char(str)
  @cypher[str]
end


def decode_word(str)
  word = str.split
  word.map! { |letter| decode_char(letter) }
  word.join
end

# def decode_message

# end

# Encoding
def encode_char(str)
  @cypher.key(str.upcase)
end

puts decode_char('.....') # Output -> 5
puts decode_word('-. .- -- .') # Output -> NAME
puts encode_char('a') # Output -> .-
