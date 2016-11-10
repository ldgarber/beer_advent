class Event < ActiveRecord::Base
  belongs_to :user

  def beer
    user.beer || Beer.find_or_create_by(:name => "TBD")
  end

end
