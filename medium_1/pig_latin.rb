class PigLatin
  COMBOS = ['squ', 'thr', 'sch', 'qu', 'th', 'ch']

  def self.translate(string)
    string.split.map { |word| find_first_letters(word) }.join(' ')
  end

  def self.find_first_letters(word)
    if check_combo(word)
      length = COMBOS[check_combo(word)].size
      form_pig_latin(word, length)
    elsif check_consonant(word)
      form_pig_latin(word, 1)
    else
      form_pig_latin(word, 0)
    end
  end

  def self.check_combo(word)
    COMBOS.index(word[0,3]) ||
    COMBOS.index(word[0,2])
  end

  def self.check_consonant(word)
    word[0] == 'y' && word[1] =~ /[aeiou]/ ||
    word[0] == 'x' && word[1] =~ /[aeiou]/ ||
    word[0] =~ /[^aeiouyx]/
  end

  def self.form_pig_latin(word, length)
    "#{word[length..-1]}#{word[0,length]}ay"
  end

  private_class_method :find_first_letters, :check_consonant, :check_combo, :form_pig_latin
end
