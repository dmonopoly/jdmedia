class Category < ActiveRecord::Base
  has_many :genres
  has_many :movies, :through => :genres
  
  # restricting :name to be any in the passed in array
  validates_inclusion_of :name, :in => %w[ Animation Film ]
  
end
