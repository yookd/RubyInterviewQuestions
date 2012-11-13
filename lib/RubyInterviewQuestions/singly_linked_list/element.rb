module RubyInterviewQuestions
  class Element
    attr_accessor :data, :next

    def initialize(list, data)
      @list = list
      @data = data
    end
  end
end
