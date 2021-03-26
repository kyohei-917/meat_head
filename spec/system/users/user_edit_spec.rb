require 'rails_helper'

RSpec.describe 'ユーザー情報編集', type: :system do

  before do
    @user = FactoryBot.create(:user)
  end

  describe 'ユーザー情報編集' do
    describe '正常' do
      it 'ユーザー情報が正常に編集できる' do
        visit new_user_session_path
        fill_in 'メールアドレス', with: @user.email
        fill_in 'パスワード', with: 'password'
        click_button 'Log in'
        visit edit_user_registration_path(@user)
        fill_in 'ニックネーム', with: 'example2'
        fill_in '現在のパスワード', with: 'password'
        click_button 'Update'
        expect(current_path).to eq root_path
        expect(page).to have_content('example2'), 'ユーザー情報が変更されていません'
      end
    end

    describe '異常' do
      it 'パスワード未入力でユーザー情報の編集に失敗する' do
        visit new_user_session_path
        fill_in 'メールアドレス', with: @user.email
        fill_in 'パスワード', with: 'password'
        click_button 'Log in'
        visit edit_user_registration_path(@user)
        fill_in 'ニックネーム', with: 'example2'
        fill_in '現在のパスワード', with: ''
        click_button 'Update'
        expect(current_path).not_to eq root_path
        expect(page).to have_content('現在のパスワードを入力してください'), 'ユーザー情報変更時のバリデーションが効いていません'
      end
    end
  end
end