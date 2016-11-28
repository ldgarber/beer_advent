class Event < ActiveRecord::Base
  belongs_to :user
  validates :date, uniqueness: true 

  def beer
    user.beer || Beer.find_or_create_by(:name => "Your beer", :description => "You should know what this beer is like! You bought it.")
  end

end
