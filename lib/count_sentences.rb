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
    #return the number of methods that monkey-patched methods that return true
    split_sentences = self.split(/[.?!]/)
    condensed_split_sentences = split_sentences.reject{|element| element.empty?}
    condensed_split_sentences.count
  end
end