def translate (words)
  separate_words = words.split(" ")
  result = []
  consonant = false
  consonants = []
  times_to_repeat_spaces = separate_words.length - 1
  capitalize = false

  def is_vowel (word)
      if word == 'a' || word == 'e' || word == 'i' || word == 'o' || word == 'u'
         return true
      end
  end

  separate_words.each { |i|
    array = []
    array = i.split("")

    i = 0
    while i < array.length do
        if is_vowel(array[i]) && i == 0 
          result.push(array[i])
          # puts "#{array[i]}: is a vowel."
        elsif !is_vowel(array[0]) && i == 0 
          consonants.push(array[i])
          consonant = true
          # puts "#{array[i]}: is a consonant and is the first letter."
        elsif !is_vowel(array[0]) && !is_vowel(array[1]) && i < 2
          consonants.push(array[i])
          consonant = true
          # puts "#{array[i]}: First and second letters are consonants."
        elsif !is_vowel(array[0]) && !is_vowel(array[1]) && !is_vowel(array[2]) && i < 3
          consonants.push(array[i])
          consonant = true
          # puts "#{array[i]}: First, second and third letters are consonants."
        elsif array[0] == "q" && array[1] == "u" && i < 2
          consonants.push(array[i])
          consonant = true
          # puts "#{array[i]}: First and second letters are q and u, respectively."
        elsif array[1] == "q" && array[2] == "u" && i < 3
          consonants.push(array[i])
          consonant = true
          # puts "#{array[i]}: Second and third letters are q and u, respectively."
        else
          result.push(array[i])
          # puts "#{array[i]} is pushed to the letter normally."
        end
        if /[[:upper:]]/.match(array[i])
          capitalize = true
        end
        i = i + 1
    end
    
    if consonant == true
      result.push(consonants)
      consonant = false
      consonants = []
    end

    result.push("ay")

    if times_to_repeat_spaces > 0
      result.push(" ")
      times_to_repeat_spaces -= 1
    end
  }

  result = result.join("").downcase

  if capitalize == true
    result = result.capitalize
  end

  return result
end

translate("Banana")