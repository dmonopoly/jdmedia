class Genre < ActiveRecord::Base  
  has_many :categories
  has_many :movies, :through => :categories
  
  # restricting :name to be any in the passed in array
  validates_inclusion_of :name, :in => ['Action','Comedy','Drama','Music Video','Other']
end