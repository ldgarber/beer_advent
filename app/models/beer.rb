class Beer < ActiveRecord::Base
  belongs_to :user
  validates :name, uniqueness: {case_sensitive: false }
end
