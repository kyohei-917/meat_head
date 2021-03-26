require 'rails_helper'

RSpec.describe 'ユーザー登録', type: :system do

  context '入力情報正常系' do
    it 'ユーザーが新規作成できること' do
      visit new_user_registration_path
      fill_in 'ニックネーム', with: 'ゲスト'
      fill_in 'メールアドレス', with: 'example@example.com'
      fill_in 'パスワード', with: 'password'
      click_button 'Sign up'
      expect(current_path).to eq root_path
    end
  end

  context '入力情報異常系' do
    it 'ユーザーが新規作成できない' do
      visit new_user_registration_path
      fill_in 'メールアドレス', with: 'example@example.com'
      click_button 'Sign up'
      expect(current_path).to eq '/users'
      expect(page).to have_content('パスワードを入力してください'), 'パスワードみ入力のエラーメッセージが表示されていません'
    end

    it 'ユーザーが新規作成できない' do
      visit new_user_registration_path
      fill_in 'パスワード', with: 'password'
      click_button 'Sign up'
      expect(current_path).to eq '/users'
      expect(page).to have_content('Eメールを入力してください'), 'Eメール未入力のエラーメッセージが表示されていません'
    end
  end
end
