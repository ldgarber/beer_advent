class WelcomeController < ApplicationController

  def index
    @today = Date.current
    @counter = @today.mday
    @season = season(@today)

    @event = Event.find_by(date: @today) 
    @tomorrow_event = Event.find_by(date: @today + 1.day) 
    end 
  end

  private
  def season(date) 
    if (date >= START_DATE) && (date <= END_DATE)
      return "in_season"
    else if  date == (START_DATE - 1.day)
      return "pre_season"
    else if  date == (END_DATE + 1.day)
      return "post_season"
    else
      return "off_season"
    end
  end

end
end

