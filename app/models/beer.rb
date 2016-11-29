class Beer < ActiveRecord::Base
  belongs_to :user
  validates :name, uniqueness: {case_sensitive: false }
  
  def description_length
    self.description.length
  end

  def name_length
    self.name.length
  end

  def self.min_abv
    Beer.find_by(abv: minimum(:abv))
  end

  def self.max_abv
    Beer.find_by(abv: maximum(:abv))
  end

  def self.min_description_length
    Beer.minimum(description_length)
  end

  def self.max_description_length
    Beer.maximum(description_length)
  end

  def self.min_name_length
    Beer.minimum(name_length)
  end

  def self.max_name_length
    Beer.maximum(name_length)
  end

end
