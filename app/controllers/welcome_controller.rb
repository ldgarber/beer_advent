class WelcomeController < ApplicationController
  def index
    @today = Date.today
    @counter = @today.mday
  end
end
