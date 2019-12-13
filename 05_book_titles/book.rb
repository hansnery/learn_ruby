class Book
  attr_reader :title

  def title=(modified_title)
    words = []
    words = modified_title.split(" ")

    if words.length > 1
      result = []
      words.each_with_index.map { |word, index|
        if word == "and" || word == "in" || word == "of" || word == "a" || word == "an" || word == "the" && index > 0
          result << word
        else
          result << word.capitalize
        end
      }
      result = result.join(" ")
      @title = result
    else
      @title = modified_title.capitalize
    end
  end
end
