class QuestionsController < ApplicationController
  def index
    
  end
  
  def new
    @question = Question.new
  end
  
  def create
    @question = Question.new(params[:question])
    if @question.save
      flash[:notice] = "Question has been created."
      render :action => :show
    else
      flash[:alert] = "Question has not been created."
      render :action => :new
    end
  end
  
  def show
    
  end
end
