require 'spec_helper'

describe ApplicationController do

  controller do
    def index
      render :text => "random text value"
    end
  end

  describe "request format" do
    it "should be defaulted if it's not specified" do
      get :index
      request.format.should == :json
    end

    it "should not overriden if specified" do
      get :index, :format => :xml
      request.format.should == :xml
    end
  end

end
