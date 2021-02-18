class AnswerDetailsController < ApplicationController
  before_action :set_answer, only: %i[edit show update destroy]

  def index
    @answer_details = Answer_detail.all
  end

  def new
    @answer_detail = Answer_detail.new
  end

  def create
    @answer_detail = Answer_detail.new(answer_detail_params)
    if @answer_detail.save
      redirect_to root_path
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
    @answer_detail = Answer_detail.find(params[:id])
  end

  def answer_detail_params
    params.require(:answer_detail).permit(:choice).merge(answer_id: params.answer_id)
  end
end
