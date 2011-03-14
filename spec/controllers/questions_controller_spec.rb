require 'spec_helper'

describe QuestionsController do

  describe "GET to index" do
    it "should return a list of all existing questions" do
      asked_date = Time.now
      question = Factory.build(:question, :asked_date => asked_date)
      Question.should_receive(:find).with(:all).and_return(question)
      get :index
      response.should be_success
      puts response
    end
  end

end
