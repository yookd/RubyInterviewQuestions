require 'spec_helper'

describe 'RubyInterviewQuestions::LinkedList' do
  context 'Creating a new linked list with no size' do
    before do
      @list = RubyInterviewQuestions::SinglyLinkedList.new
    end

    it 'should create a new LinkedList object successfully' do
      @list.should be_an_instance_of RubyInterviewQuestions::SinglyLinkedList
    end
  end
end

