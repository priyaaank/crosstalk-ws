class QuestionsController < ApplicationController

  def index
    all_questions = Question.find(:all)
    respond_to do |format|
      format.json do
        render :json => all_questions
      end

      format.xml do
        render :xml => all_questions
      end
    end
  end

end
