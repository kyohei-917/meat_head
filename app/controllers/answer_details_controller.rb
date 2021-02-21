class AnswerDetailsController < ApplicationController
  before_action :set_answer
  before_action :set_answer_detail, only: %i[show edit update destroy]

  def index
    @answer_details = AnswerDetail.all
  end

  def show
    @questions = Question.all
    @question = @questions.find(@answer_detail.question_id)
  end

  def new
    @answer_detail = @answer.answer_details.new
    @question = Question.order("RAND()").limit(5)
  end

  def create
    @question = Question.order("RAND()").limit(5)
    @answer_detail = @answer.answer_details.new(answer_detail_params)
    @answer_detail.question_id = @question.id
    if @answer_detail.save
      redirect_to [@answer, @answer_detail]
    else
      render :new
    end
  end

  def destroy
    @answer_detail.destroy!
    redirect_to root_path
  end


  private

  def set_answer
    @answer = Answer.find(params[:answer_id])
  end

  def set_answer_detail
    @answer_detail = @answer.answer_details.find(params[:id])
  end

  def answer_detail_params
    params.require(:answer_detail).permit(:choice)
  end
end
