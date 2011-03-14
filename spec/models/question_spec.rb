require 'spec_helper'

describe Question do

  context "attributes" do
    it "should respond to title" do
      Question.new.should respond_to(:title)
    end

    it "should respond to text" do
      Question.new.should respond_to(:text)
    end

    it "should respond to asked_date" do
      Question.new.should respond_to(:asked_date)
    end
  end

end
