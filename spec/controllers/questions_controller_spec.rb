require 'spec_helper'

describe QuestionsController do

  describe "GET to index" do
    it "should return a list of all existing questions" do
      asked_date = Time.now
      question1 = Factory.build(:question, :title => "question1", :asked_date => asked_date)
      question2 = Factory.build(:question, :title => "question2", :asked_date => asked_date)
      Question.should_receive(:find).with(:all).and_return([question1, question2])

      get :index
      response.should be_success
      json_response = ActiveSupport::JSON.decode(response.body)
      Time.parse(json_response[0]["question"]["asked_date"]).strftime("%D").should == asked_date.strftime("%D")
      json_response[0]["question"]["title"].should == "question1" 
      json_response[1]["question"]["title"].should == "question2" 
    end
  end

end
