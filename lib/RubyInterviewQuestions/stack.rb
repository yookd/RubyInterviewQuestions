module RubyInterviewQuestions
  class Stack
    def initialize(size=1)
      @length = size
      self.reset
    end

    # Return top-most element from stack
    def pop

      raise 'Stack is empty' if self.empty?

      # Get the element
      el = @stack[@head]

      # If we are popping the last element, reset everything
      if @head == @tail
        self.reset
      else
        @head -= 1
      end

      el
    end

    # Add element to stack
    def push(element)
      raise 'Stack is full' if self.full?

      # Check if it's a new stack
      if @head.nil?
        @head = 0
      else
        @head += 1
      end

      if @tail.nil?
        @tail = 0
      end

      # Insert the element
      @stack[@head] = element
    end

    def empty?
      @tail.nil?
    end

    def full?
      @length-1 == @head
    end

    # Reset the stack when it's empty / initialized
    def reset
      @head = nil
      @tail = nil
      @stack = Array.new(@length)
    end
  end
end
