class GenresController < ApplicationController
  before_filter :set_category
  
  def action_movies
    @movies = Movie.all.reject { |item|
        item.genre.name != 'Action'
    }
    filter_categories(@category) if !@category.nil?
  end
  
  def comedies
    @movies = Movie.all.reject { |item|
        item.genre.name != 'Comedy'
    }
    filter_categories(@category) if !@category.nil?
  end
  
  def dramas
    @movies = Movie.all.reject { |item|
        item.genre.name != 'Drama'
    }
    filter_categories(@category) if !@category.nil?
  end  
  
  def music_videos
    @movies = Movie.all.reject { |item|
        item.genre.name != 'Music Video'
    }
    filter_categories(@category) if !@category.nil?
  end
  
  def other
    @movies = Movie.all.reject { |item|
        item.genre.name != 'Other'
    }
    filter_categories(@category) if !@category.nil?
  end  
  
  private
    def set_category
      @category = params[:c]
    end
    
    def filter_categories c
      if c == 'Animation'
        @movies.reject! { |item|
          item.category.name != 'Animation'
        }
      elsif c == 'Film'
        @movies.reject! { |item|
        item.category.name != 'Film'
        }
      else
        raise "mistyped string for category: #{c}"
      end
    end
      
end
