require 'rails_helper'

RSpec.describe 'エピソード編集', type: :system do

  describe 'ログインしている' do
    context '入力情報正常系' do
      it 'エピソードが投稿できること' do
        @user = build(:user)
        visit new_user_session_path
        fill_in 'メールアドレス', with: @user.email
        fill_in 'パスワード', with: 'password'
        click_button 'Log in'
        # build(:question)
        visit new_question_path
        fill_in "question_text", with: '脳筋あるある今から言うよ'
        find("#question_choice_yes").click
        click_button '提供'
        visit questions_path(@user)
        click_link '脳筋あるある今から言うよ'
        fill_in 'question_text', with: '脳筋あるあるやっぱり言わないよ'
        click_button '提供'
        expect(current_path).to eq questions_path
        expect(page).to have_content('更新しました！'), '編集完了のフラッシュメッセージが表示されていません'
        expect(page).to have_content('脳筋あるあるやっぱり言わないよ')
      end
    end
    context '入力情報異常系' do
      it 'エピソード空で投稿に失敗すること' do
        @user = build(:user)
        visit new_user_session_path
        fill_in 'メールアドレス', with: @user.email
        fill_in 'パスワード', with: 'password'
        click_button 'Log in'
        # build(:question)
        visit new_question_path
        fill_in "question_text", with: '脳筋あるある今から言うよ'
        find("#question_choice_yes").click
        click_button '提供'
        visit questions_path(@user)
        click_link '脳筋あるある今から言うよ'
        fill_in 'question_text', with: ''
        click_button '提供'
        expect(page).to have_content('脳筋あるあるを入力してください'), 'エピソード投稿のバリデーションが効いていません'
      end
    end
  end
end