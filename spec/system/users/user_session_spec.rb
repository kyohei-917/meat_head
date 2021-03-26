require 'rails_helper'

RSpec.describe 'ログイン・ログアウト', type: :system do

  before do
    @user = FactoryBot.create(:user)
  end

  describe '通常画面' do
    describe 'ログイン' do
      context '認証情報が正しい場合' do
        it 'ログインできること' do
          visit new_user_session_path
          fill_in 'メールアドレス', with: @user.email
          fill_in 'パスワード', with: 'password'
          click_button 'Log in'
          expect(current_path).to eq root_path
          expect(page).not_to have_content('ログインしていません'), '正常にログインできていません'
        end
      end

      context 'パスワードに誤りがある場合' do
        it 'ログインに失敗する' do
          visit new_user_session_path
          fill_in 'メールアドレス', with: @user.email
          fill_in 'パスワード', with: ''
          click_button 'Log in'
          expect(current_path).not_to eq root_path
          expect(page).to have_content('ログインしていません'), 'ログイン時のバリデーションが効いていません'
        end
      end
    end

    describe 'ログアウト' do
      it 'ログアウトできる' do
        visit new_user_session_path
        fill_in 'メールアドレス', with: @user.email
        fill_in 'パスワード', with: 'password'
        click_button 'Log in'
        click_on 'ログアウト'
        expect(current_path).to eq root_path
        expect(page).to have_content('ログインしていません'), '正常にログアウトできていません'
      end
    end
  end
end
