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
    counter_array = self.split(Regexp.union(split_items))
    final_array = counter_array.reject {|x| x == "," || x == "!" || x == "?"}
    final_array.length
  end
end