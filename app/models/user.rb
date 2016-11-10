class User < ActiveRecord::Base   
  has_secure_password
  has_many :events

  def admin? 
    admin 
  end

  def beer
    self.beer || Beer.find_or_create_by(:name => "TBD") 
  end

end
