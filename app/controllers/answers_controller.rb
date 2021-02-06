class AnswersController < ApplicationController
  before_action :set_answer, only: %i[edit show update destroy]

  def index
    @answers = Answer.all
  end

  def new
    @answer = Answer.new
    @questions = Question.order("RAND()").limit(5)
  end

  def create
    @answer = Answer.new(answer_params)
    if @answer.save
      render new_answer_path
    else
      render :new
    end
  end

  def destroy
    @answer.destroy!
    redirect_to answers_path
  end


  private

  def set_answer
    @answer = Answer.find(params[:id])
  end

  def answer_params
    params.require(:answer).permit(:choice, :question)
  end


end
