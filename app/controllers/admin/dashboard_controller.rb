class Admin::DashboardController < ApplicationController
  def index
    #validate that they are a signed in admin, otherwise send to sign in
    redirect_to '/admin/sign_in'
  end

end
