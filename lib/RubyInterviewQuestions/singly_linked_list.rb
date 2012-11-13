module RubyInterviewQuestions
  class SinglyLinkedList
    class Element
      attr_accessor :next, :data
      def initialize(list, data)
        @list = list
        @data = data
      end
    end

    # Set defaults
    def initialize
      @sentinel = RubyInterviewQuestions::SinglyLinkedList::Element.new(self, nil)
      @sentinel.next = @sentinel
      self.head = @sentinel
    end

    def empty?
      self.head.nil?
    end

    # Insert an element to the end of the list
    # Arguments:
    # data => Data of element to be removed
    def insert(data)
      # Create a new node
      node = RubyInterviewQuestions::SinglyLinkedList::Element.new(self, data)

      while !self.head.nil?
        self.head = self.head.next
      end

      self.head.next = node
      node.next = nil
      self.head = @sentinel
    end

    # Looks for specified data in linked list
    # Arguments:
    # data => Data of element to be found
    def search(data)
      while !self.head.nil?
        if self.head.data == data
          true
        else
          self.head = self.head.next
        end
      end

      self.head = @sentinel
    end
  end
end
