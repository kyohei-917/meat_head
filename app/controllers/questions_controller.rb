class QuestionsController < ApplicationController
  before_action :set_question, only: %i[edit show update destroy]
  before_action :guest_user_valid, only: %i[new create edit update destroy]

  def index
    # @questions = Question.all
    @questions = current_user.questions
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.new(question_params)
    @question.user_id = current_user.id
    if @question.save
      redirect_to questions_path, success: 'テイキョウありがとうございます！'
    else
      flash[:danger] = 'テイキョウに失敗しました。'
      render :new
    end
  end

  def edit; end

  def show; end

  def update
    if @question.update(question_params)
      redirect_to questions_path, success: '更新しました！'
    else
      flash[:danger] = '更新に失敗しました'
      render :edit
    end
  end

  def destroy
    @question.destroy!
    redirect_to questions_path
  end

  private

  def set_question
    @question = Question.find(params[:id])
  end

  def question_params
    params.require(:question).permit(:text, :choice).merge(user_id: current_user.id)
  end

  def guest_user_valid
    if current_user.email == "guest@example.com"
      redirect_to root_path, alert: 'ゲストユーザーは質問の作成、編集、削除はできません'
    end
  end
end
