class Movie < ActiveRecord::Base
  belongs_to :category
  belongs_to :genre
  
  validates_presence_of :embed_code  
end