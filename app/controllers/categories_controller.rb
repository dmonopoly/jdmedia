class CategoriesController < ApplicationController
  before_filter :set_genre
  
  def animations
    @movies = Movie.all.reject { |item|
        item.category.name != 'Animation'
    }    
    filter_genres(@genre) if !@genre.nil?
  end

  def films
    @movies = Movie.all.reject { |item|
        item.category.name != 'Film'
    }    
    filter_genres(@genre) if !@genre.nil?
  end
  
  private
    def set_genre
      @genre = params[:g]
    end
  
    def filter_genres g
      if g == 'Action'
        @movies.reject! { |item|
          item.genre.name != 'Action'
        }
      elsif g == 'Comedy'
        @movies.reject! { |item|
          item.genre.name != 'Comedy'
        }
      elsif g == 'Drama'
        @movies.reject! { |item|
          item.genre.name != 'Drama'
        }
      elsif g == 'Music Video'
        @movies.reject! { |item|
          item.genre.name != 'Music Video'
        }
      elsif g == 'Other'
        @movies.reject! { |item|
          item.genre.name != 'Other'
        }
      else      
        raise "mistyped string for genre: #{g}"
      end
    end      
    
end