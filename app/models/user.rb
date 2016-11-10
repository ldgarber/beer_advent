class User < ActiveRecord::Base   
  has_one :event
end
