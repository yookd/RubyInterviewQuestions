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
end
