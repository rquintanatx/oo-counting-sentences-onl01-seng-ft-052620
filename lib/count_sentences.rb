require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    sentence_array = self.split("?",".")
    filtered_sentence_array = sentence_array.reject {|i| i.empty?}
    binding.pry
    puts filtered_sentence_array.count
  end
end

"This, well, is a sentence. This is too!! And so is this, I think? Woo...".count_sentences