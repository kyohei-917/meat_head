class Users::RegistrationsController < Devise::RegistrationsController
  before_action :check_guest, only: :destroy

  # ゲストユーザーを削除できないようにする
  def check_guest
    if resource.email == 'guest@example.com'
      redirect_to root_path, alert: 'ゲストユーザーは削除できません。'
    end
  end
end