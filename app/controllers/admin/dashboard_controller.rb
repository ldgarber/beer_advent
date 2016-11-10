class Admin::DashboardController < ApplicationController
  def index
    if !(user_signed_in? && user.admin?)
      render 'admin/sign_in'
    end
  end

end
