def decode_char(data)
  maped_data = {
    '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D',
    '.' => 'E', '..-.' => 'F', '--.' => 'G', '....' => 'H',
    '..' => 'I', '.---' => 'J', '-.-' => 'K', '.-..' => 'L',
    '--' => 'M', '-.' => 'N', '---' => 'O', '.--.' => 'P',
    '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
    '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X',
    '-.--' => 'Y', '--..' => 'Z'
  }
  maped_data[data]
end

def decode_word(enc_word)
  decoded_word = ''
  enc_word.split.each { |n| decoded_word += decode_char(n)}
  decoded_word
end

def decode(enc_text)
  dec_text = []
  enc_text.split('   ').each { |n| dec_text.push(decode_word(n)) }
  dec_text.join(' ')
end

puts decode('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
