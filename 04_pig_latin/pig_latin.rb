VOWELS = %w[a e i o u].freeze

def translate(phrase)
  phrase = phrase.split(' ')
  phrase.each do |phrase|
    if VOWELS.include?(phrase[0])
      phrase << 'ay'
    elsif phrase[0..1] == 'qu'
      phrase << phrase.slice!(0..1) << 'ay'
    elsif phrase[1..2] == 'qu' && !VOWELS.include?(phrase[0])
      phrase << phrase.slice!(0..2) << 'ay'
    elsif VOWELS.include?(phrase[1])
      phrase << phrase.slice!(0) << 'ay'
    elsif !VOWELS.include?(phrase[2])
      phrase << phrase.slice!(0..2) << 'ay'
    elsif !VOWELS.include?(phrase[1])
      phrase << phrase.slice!(0..1) << 'ay'
    else
      phrase << phrase.slice!(0) << 'ay'
    end
  end
  phrase.join(' ')
end
