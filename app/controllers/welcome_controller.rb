class WelcomeController < ApplicationController

  def index
    @today = Date.today.in_time_zone("Eastern Time (US & Canada)")
    @counter = @today.mday
    @season = season(@today)

    if @event = Event.find_by(date: @today) 
      @user = @event.user
      @beer = @event.user.beer
    end

    if @tomorrow_event = Event.find_by(date: @today + 1)
      @tomorrow_user = @tomorrow_event.user
      @tomorrow_beer = @tomorrow_event.beer
    end 
  end

  private
  def season(date) 
    if (date >= START_DATE) && (date <= END_DATE)
      return "in_season"
    else if  date == (START_DATE - 1)
      return "pre_season"
    else if  date == (END_DATE + 1)
      return "post_season"
    else
      return "off_season"
    end
  end

end
end
end
