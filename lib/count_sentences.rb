require 'pry'

class String

  def sentence?
    if self.end_with?(".")
      true
    else
      false
    end
  end

  def question?
    if self.end_with?("?")
      true
    else
      false
    end

  end

  def exclamation?
    if self.end_with?("!")
      true
    else
      false
    end

  end

  def count_sentences
    first_pass = self.split("! ")
    second_pass = first_pass.collect do |sentence|
      sentence.split("? ")
    end
    temp_third = second_pass.flatten
    third_pass = temp_third.collect do |sentence|
      sentence.split(". ")
    end
    @total = third_pass.flatten.count
  end
end

#binding.pry