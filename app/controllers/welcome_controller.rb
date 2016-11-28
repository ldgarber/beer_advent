class WelcomeController < ApplicationController
  def index
    @today = Date.today
    @counter = @today.mday
    @event = Event.find_by(date: @today)
    @tomorrow_event = Event.find_by(date: @today + 1)
    if @event
      @user = @event.user
      @beer = @event.user.beer
    end
    if @tomorrow_event
      @tomorrow_user = @tomorrow_event.user
      @tomorrow_beer = @tomorrow_event.beer
    end
  end
end
