class Snoopy < ApplicationRecord
    has_many :photo_galleries
  
  def to_param
    #function that rail converts an object to url
    char_name
  end
end
