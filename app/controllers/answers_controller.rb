class AnswersController < ApplicationController
  before_action :set_answer, only: %i[edit show update destroy]

  def index
    @answers = Answer.all
  end

  def new
    @answer = Answer.new
  end

  def create
    @answer = Answer.create
    @answer.user_id = current_user.id
    if @answer.save
      redirect_to new_answer_answer_detail_path(@answer.id)
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

end
