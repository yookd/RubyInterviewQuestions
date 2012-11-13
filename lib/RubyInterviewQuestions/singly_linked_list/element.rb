module RubyInterviewQuestions
  class SinglyLinkedList
    class Element
      attr_accessor :data
      attr_accessor :next

      def initialize(list, data)
        @list = list
        @data = data
      end
    end
  end
end
