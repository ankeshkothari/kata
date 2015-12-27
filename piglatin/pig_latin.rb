class PigLatin

  def self.begin_with_vowel?(string)
    /^[aeiou]/.match(string)
  end

  def self.translate(string)
    if begin_with_vowel?(string)
      p string + 'ay'
    else
      puts 'not vowel'
    end

  end
end

PigLatin.translate('apple')
PigLatin.translate('ear')
PigLatin.translate('pig')
PigLatin.translate('koala')


# chair
# queen
# square
# therapy
# thrush
# school
# yellow
# yttria
# xenon
# xray