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
    counter_array = [ ]
    split_items = ["?", "!", "."]
    counter_array = self.split(split_items)
    counter_array
  end
end