require 'rails_helper'

RSpec.describe 'エピソード作成', type: :system do

  describe 'ログインしている' do
    context '入力情報正常系' do
      it 'エピソードが投稿できること' do
        @user = build(:user)
        visit new_user_session_path
        fill_in 'メールアドレス', with: @user.email
        fill_in 'パスワード', with: 'password'
        click_button 'Log in'
        visit new_question_path
        fill_in "question_text", with: '脳筋あるある'
        find("#question_choice_yes").click
        click_button '提供'
        expect(current_path).to eq questions_path
        expect(page).to have_content('テイキョウありがとうございます！'), '投稿完了のフラッシュメッセージが表示されていません'
      end
    end

    context '入力異常系' do
      it 'エピソードが空で投稿に失敗すること' do
        @user = build(:user)
        visit new_user_session_path
        fill_in 'メールアドレス', with: @user.email
        fill_in 'パスワード', with: 'password'
        click_button 'Log in'
        visit new_question_path
        fill_in "question_text", with: ''
        find("#question_choice_yes").click
        click_button '提供'
        expect(page).to have_content('脳筋あるあるを入力してください'), 'エピソード作成時のバリデーションが効いていません'
      end
      it 'チョイス未選択で投稿に失敗すること' do
        @user = build(:user)
        visit new_user_session_path
        fill_in 'メールアドレス', with: @user.email
        fill_in 'パスワード', with: 'password'
        click_button 'Log in'
        visit new_question_path
        fill_in "question_text", with: '脳筋あるある'
        click_button '提供'
        expect(page).to have_content('選択肢を入力してください'), 'エピソード作成時のバリデーションが効いていません'
      end
    end
  end

  describe 'ログインしていない' do
    it 'エピソード投稿ができないこと' do
      visit new_user_session_path
      expect(current_path).not_to eq questions_path
    end
  end
end