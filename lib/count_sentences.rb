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
    sentence_array = self.split()
    filtered_sentence_array = sentence_array.reject{|sentence| sentence = " "}
    filtered_sentence_array.count
  end
end