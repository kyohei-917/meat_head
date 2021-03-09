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
      @judge_count = (@answer.answer_details.first.choice == @answer.answer_details.first.question.choice ? "脳筋" : "正常"),
                    (@answer.answer_details.second.choice == @answer.answer_details.second.question.choice ? "脳筋" : "正常"),
                    (@answer.answer_details.third.choice == @answer.answer_details.third.question.choice ? "脳筋" : "正常"),
                    (@answer.answer_details.fourth.choice == @answer.answer_details.fourth.question.choice ? "脳筋" : "正常"),
                    (@answer.answer_details.fifth.choice == @answer.answer_details.fifth.question.choice ? "脳筋" : "正常"),
                    (@answer.answer_details.first(6).last.choice == @answer.answer_details.first(6).last.question.choice ? "脳筋" : "正常"),
                    (@answer.answer_details.first(7).last.choice == @answer.answer_details.first(7).last.question.choice ? "脳筋" : "正常"),
                    (@answer.answer_details.first(8).last.choice == @answer.answer_details.first(8).last.question.choice ? "脳筋" : "正常")
      if @judge_count.count('脳筋') >= 8
        redirect_to answers_result100_path
      elsif @judge_count.count('脳筋') >= 6 && @judge_count.count('脳筋') <= 7
        redirect_to answers_result70_path
      elsif @judge_count.count('脳筋') >= 4 && @judge_count.count('脳筋') <= 5
        redirect_to answers_result50_path
      elsif @judge_count.count('脳筋') >= 2 && @judge_count.count('脳筋') <= 3
        redirect_to answers_result30_path
      else
        redirect_to answers_result0_path
      end
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
                  (@answer.answer_details.fifth.choice == @answer.answer_details.fifth.question.choice ? "脳筋" : "正常"),
                  (@answer.answer_details.first(6).last.choice == @answer.answer_details.first(6).last.question.choice ? "脳筋" : "正常"),
                  (@answer.answer_details.first(7).last.choice == @answer.answer_details.first(7).last.question.choice ? "脳筋" : "正常"),
                  (@answer.answer_details.first(8).last.choice == @answer.answer_details.first(8).last.question.choice ? "脳筋" : "正常")
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
