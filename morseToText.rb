def decode_char(data)
  mapedData = {
    '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D',
    '.' => 'E', '..-.' => 'F', '--.' => 'G', '....' => 'H',
    '..' => 'I', '.---' => 'J', '-.-' => 'K', '.-..' => 'L',
    '--' => 'M', '-.' => 'N', '---' => 'O', '.--.' => 'P',
    '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
    '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X',
    '-.--' => 'Y', '--..' => 'Z'
  }
  mapedData[data]
end

def decode_word(enc_word)
  decoded_word = ''
  enc_word.split.each do |enc_char|
    decoded_word += decode_char(enc_char)
  end
  decoded_word
end

def decode(enc_text)
  dec_text = []
  enc_text.split('   ').each do |enc_word|
    dec_text.push(decode_word(enc_word))
  end
  dec_text.join(' ')
end

puts decode('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')