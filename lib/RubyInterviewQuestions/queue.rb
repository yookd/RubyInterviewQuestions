module RubyInterviewQuestions
  class Queue
    # Create new queue with given size
    # Default size is 0
    def initialize(size=0)
      # Set head and tail; create new array
      @length = size
      self.reset
    end

    # Add given element to the queue
    def enqueue(element)
      raise 'Queue is full' if @queue.full?

      @queue[@tail] = element

      # Check to see if the queue was first initialized
      if @head.nil?
        @head = 0
      end

      # Check to see if tail is the first element
      if @tail == @length - 1
        @tail = 0
      else
        @tail += 1
      end
    end

    # Remove element from the queue and return it
    def dequeue
      raise 'Queue is empty' if @queue.empty?

      el = @queue[@head]

      if @head == @length - 1
        @head = 0
      else
        @head += 1
      end

      if @head == @tail
        self.reset
      end

      return el
    end

    # Return the size of the queue
    def size?
      @queue.length
    end

    # Check to see if the queue is full
    def full?
      @head == @tail
    end

    # Check to see if the queue is empty
    def empty?
      @head.nil?
    end

    def reset
      @queue = Array.new(@length)
      @head = nil
      @tail = 0
    end
  end
end
