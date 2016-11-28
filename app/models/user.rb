class User < ActiveRecord::Base   
  has_one :event
  has_one :beer

  def admin? 
    admin 
  end

end
