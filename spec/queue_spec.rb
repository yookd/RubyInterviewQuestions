require 'spec_helper'

describe 'RubyInterviewQuestions::Queue' do
  context 'Creating a new queue with no size' do
    before do
      @queue = RubyInterviewQuestions::Queue.new
    end

    it 'should create a queue with size 1' do
      @queue.size == 1
    end

    it 'should create a new Queue object successfully' do
      @queue.should be_an_instance_of RubyInterviewQuestions::Queue
    end
  end

  context 'Creating a new queue with a size' do
    before do
      @queue = RubyInterviewQuestions::Queue.new(4)
    end

    it 'should create a queue with size 4' do
      @queue.size == 4
    end
  end

  context 'Removing element from an empty queue' do
    it 'should raise an exception' do
      @queue = RubyInterviewQuestions::Queue.new(10)
      expect { @queue.dequeue }.to raise_exception
    end
  end

  context 'Adding element to a full queue' do
    it 'should raise an exception' do
      @queue = RubyInterviewQuestions::Queue.new
      @queue.enqueue(2)
      expect { @queue.enqueue(1) }.to raise_exception
    end
  end
end
