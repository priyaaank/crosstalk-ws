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

  def create
    new_question = Question.new(params[:question])
    new_question.save

    respond_to do |format|
      format.json do 
        render :json => new_question , :status => 200
      end

      format.xml do
        render :xml => new_question, :status => 200
      end
    end
  end

end
