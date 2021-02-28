class AnswersController < ApplicationController
  before_action :set_answer, only: %i[edit show update destroy]

  def index
    @answers = Answer.all
  end

  def new
    @answer = Answer.new
    @answer.answer_details.build
    @questions = Question.order("RAND()").limit(8)
  end

  def create
    @answer = Answer.create(answer_params)
    if @answer.save
      redirect_to answer_path(@answer)
    else
      flash.now[:alart] = "回答に失敗しました"
      render :new
    end
  end

  def show
    @judge_count = (@answer.answer_details.first.choice == @answer.answer_details.first.question.choice ? "脳筋" : "正常"),
                   (@answer.answer_details.second.choice == @answer.answer_details.second.question.choice ? "脳筋" : "正常"),
                   (@answer.answer_details.third.choice == @answer.answer_details.third.question.choice ? "脳筋" : "正常"),
                   (@answer.answer_details.fourth.choice == @answer.answer_details.fourth.question.choice ? "脳筋" : "正常"),
                   (@answer.answer_details.fifth.choice == @answer.answer_details.fifth.question.choice ? "脳筋" : "正常")
                   (@answer.answer_details.first(6).last == @answer.answer_details.first(6).last.question.choice ? "脳筋" : "正常")
                   (@answer.answer_details.first(7).last == @answer.answer_details.first(7).last.question.choice ? "脳筋" : "正常")
                   (@answer.answer_details.first(8).last == @answer.answer_details.first(8).last.question.choice ? "脳筋" : "正常")
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
    params.require(:answer).permit(
      answer_details_attributes: [:id,
                                  :choice,
                                  :answer_id,
                                  :question_id]
    ).merge(user_signed_in? ? {user_id: current_user.id} : {user_id: 1})
  end
end
